class DiscreteAreaOfDevelopment < ActiveRecord::Base
  belongs_to_many :pupils
  has_many :areas_of_focus
end
