class Group < ActiveRecord::Base
  has_many :groupings, :dependent => :destroy
  has_many :groups, :through => :groupings
end
