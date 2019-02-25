require 'faker'

FactoryGirl.define do
  factory :movie do |f|
    f.name { Faker::Name.name }
    f.release_date { Date.today + Faker::Number.number(2).to_i.days }
    f.short_description { Faker::Lorem.paragraph }
    f.genre { Faker::Lorem.word }
    f.age_bar { Faker::Number.number(2) }
  end
end
