class Assessment < ActiveRecord::Base
	has_many :Pupils
  belongs_to :subject
  has_one :level
end
