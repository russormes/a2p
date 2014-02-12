# Defines the pupil model for a2p app
class Pupil < ActiveRecord::Base
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

  def name
    [given_name, family_name].join ' '
  end
end
