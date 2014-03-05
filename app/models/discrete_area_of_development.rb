class DiscreteAreaOfDevelopment < ActiveRecord::Base
  # belongs_to_many :pupils
  has_many :areas_of_focus
  validates :name, presence: true
  validates :description, presence: true
end
