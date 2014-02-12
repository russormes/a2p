# Defines the pupil model for a2p app
class Pupil < ActiveRecord::Base
  require 'csv'

  has_many :groupings, dependent: :destroy
  has_many :groups, through: :groupings

  validates :given_name, presence: true
  validates :family_name, presence: true
  validates :image_path, allow_blank: true, url: true
  # validates :image_path, allow_blank: true, format: {
  #    with: /\.(gif|jpg|png)\z/i,
  #    message: 'URL must point to GIT/JPG/PNG pictures'
  # }
  validates_uri_existence_of :image_path, with:
    %r{/(^\z)|(^(http|https):\/\/[a-z0-9]+
      ([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?\z)}ix

  #validates :image_path, allow_blank: true,
  #                       uri: { format: %r{/(\z)|(^(http|https):\/\/[a-z0-9]+
  #                ([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?\z)}ix }

  #def image_path=(url_str)
  #  unless url_str.blank?
  #    unless url_str.split(':')[0] == 'http' ||
  #      url_str.split(':')[0] == 'https'
  #      url_str = 'http://' + url_str
  #    end
  #  end
  #  write_attribute :image_path, url_str
  #end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      pupil_hash = row.to_hash
      pupil = Pupil.where(given_name: pupil_hash['given_name'], other_name: pupil_hash['other_name'],
                          family_name: pupil_hash['family_name'], name_known_by: pupil_hash['name_known_by'],
                          dob:  pupil_hash['dob'], gender:  pupil_hash['gender']).first_or_create
      #if pupil.count == 1
      #  pupil.first.update_attributes(pupil_hash)
      #else
      #  Pupil.create!(pupil_hash)
      #end # end if !pupil.nil?
      pupil.save!
    end # end CSV.foreach
  end # end self.import(file)

  def name
    [given_name, family_name].join ' '
  end
end
