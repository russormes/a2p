class Pupil < ActiveRecord::Base
  
  has_many :groupings, :dependent => :destroy
  has_many :groups, :through => :groupings
  
  validates :given_name, presence: true
  validates :family_name, presence: true
  
  def name
    [given_name, family_name].join " "
  end
  
end
