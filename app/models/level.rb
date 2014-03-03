class Level < ActiveRecord::Base
  has_many :areas_of_focus
  belongs_to :discrete_areas_of_learning
end
