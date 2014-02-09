class Level < ActiveRecord::Base
	has_many :subjects
	has_many :assessments
	has_many :area_of_focus
end
