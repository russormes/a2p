class Subject < ActiveRecord::Base
  has_many :assessments
  has_many :area_of_focus
end
