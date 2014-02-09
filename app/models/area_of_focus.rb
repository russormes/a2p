class AreaOfFocu < ActiveRecord::Base
  belongs_to :subject
  has_many :levels
end
