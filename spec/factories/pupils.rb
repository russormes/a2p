require 'faker'

FactoryGirl.define do
  factory :pupil do |f|
   f.given_name { Faker::Name.first_name }
   f.other_name { Faker::Name.first_name }
   f.family_name { Faker::Name.last_name }
   f.name_known_by { Faker::Name.first_name }
   f.gender "F"
   f.dob "24031975"
  end
end