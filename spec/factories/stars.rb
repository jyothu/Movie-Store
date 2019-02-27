require 'faker'

FactoryGirl.define do
    factory :star do |f|
      f.hero { Faker::Name.name }
      f.heroin { Faker::Name.name }
      f.director { Faker::Name.name }
      f.producer { Faker::Name.name }
      f.supporting_cast { Faker::Name.name }
    end
  end
