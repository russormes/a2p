class AreaOfFocus < ActiveRecord::Base
  belongs_to :discrete_areas_of_development
  has_many :statements_of_achievement
end
