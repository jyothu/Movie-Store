require 'faker'

FactoryGirl.define do
  factory :comment do |f|
    f.user { create(:user) }
    f.movie { create(:movie) }
    f.review { Faker::Lorem.paragraph }
  end
end
