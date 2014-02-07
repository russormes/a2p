class Group < ActiveRecord::Base
  has_many :groupings, :dependent => :destroy
  has_many :pupils, :through => :groupings
end
