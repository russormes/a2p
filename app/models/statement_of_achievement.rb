class StatementOfAchievement < ActiveRecord::Base
  belongs_to :area_of_focus
  validates :statement, presence: true
  validates :level, presence: true
end
