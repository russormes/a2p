class ResponsibleAdult < ActiveRecord::Base
  has_many :pupils
  validates :job_title, presence: true
  validates :given_name, presence: true
  validates :surname, presence: true
  validates :responsibility, presence: true
end
