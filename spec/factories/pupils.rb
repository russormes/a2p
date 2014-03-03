require 'faker'

FactoryGirl.define do
  factory :pupil do |p|
   p.id "2" 
   p.given_name { Faker::Name.first_name }
   p.other_name { Faker::Name.first_name }
   p.surname { Faker::Name.last_name }
   p.name_known_by { Faker::Name.first_name }
   p.gender "F"
   p.dob "24/03/1975"
   p.image_path "http://www.pxleyes.com/images/contests/rails-crossing/fullsize/sourceimage.jpg"
   p.created_at Time.now
   p.updated_at Time.now
  end
end