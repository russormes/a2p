# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :responsible_adult do |r|
    r.given_name {"MyString"}
    r.surname {"My String"}
    r.job_title {"MyString"}
    r.responsibility {"MyString"}
  end
end
