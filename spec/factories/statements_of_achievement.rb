# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :statement_of_achievement do |s|
    s.level { "3" }
    s.statement {"some sentence-like structures formed by chaining clauses together,
               e.g. series of ideas joined by repeated use of and"}
  end
end
