class Level < ActiveRecord::Base
  belongs_to_many :discrete_areas_of_learning
  has_many :areas_of_focus
end
