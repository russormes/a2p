# Defines the pupil model for a2p app
class Pupil < ActiveRecord::Base
# Define the relationships for the underlying data model
# e.g. a pupil belongs to many teaching groups. 
 # has_many :groupings, dependent: :destroy
  has_many :groups, through: :groupings

# Date validation for the pupil fields.
# So far I can't figure out how to check the url is well formed and actually points
# to the image file. TODO! 
  validates :given_name, presence: true
  validates :family_name, presence: true
  validates :image_path, allow_blank: true, url: true
   validates :image_path, allow_blank: true, format: {
      with: /\.(gif|jpg|png)\z/i,
     message: 'URL must point to GIT/JPG/PNG file'
   }
 
 # Define an importer for pupil data from csv or excel files.
 # Does not handle updating existing files yet. 
  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      pupil_hash = Hash[[header, spreadsheet.row(i)].transpose]
      # Pupil.where().first_or_create is a method from activeRecord that checks for a record that matches the
      # values set here before trying to create a new version.
      pupil = Pupil.where(given_name: pupil_hash['given_name'], other_name: pupil_hash['other_name'],
                          family_name: pupil_hash['family_name'], name_known_by: pupil_hash['name_known_by'],
                          dob: pupil_hash['dob'], gender:  pupil_hash['gender']).first_or_create
      #understanding this code might answer the update problem.
      #if pupil.count == 1
      #  pupil.first.update_attributes(pupil_hash)
      #else
      #  Pupil.create!(pupil_hash)
      #end # end if !pupil.nil?
     pupil.save!
    end
  end

def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
    when ".csv" then Roo::CSV.new(file.path)
    when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
    when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
  else raise "Unknown file type: #{file.original_filename}"
  end
end

  def name
    [given_name, family_name].join ' '
  end
end
