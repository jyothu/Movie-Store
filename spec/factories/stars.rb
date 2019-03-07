require 'faker'

FactoryGirl.define do
  factory :star do |f|
    f.name { Faker::Name.name }
    f.role { Faker::Number.between(0, 4) }
    f.age { Faker::Number.number(2) }
  end
end
