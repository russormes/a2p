class Pupil < ActiveRecord::Base
  has_many :pupil_groups
  has_many :groups, :through => :pupil_groups
end
