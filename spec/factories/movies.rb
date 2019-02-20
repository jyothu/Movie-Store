require 'faker'

FactoryGirl.define do
  factory :movie do |f|
    f.name { Faker::Name.name }
    f.release_date { Faker::Date.backward(release_date) }
    f.short_description { Faker::Name.short_description }
    f.genre { Faker::Name.genre }
    f.age_bar { Faker::Number.age_bar }
  end
end