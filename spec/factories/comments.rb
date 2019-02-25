require 'faker'

FactoryGirl.define do
  factory :comment do |f|
    f.user { create(:user) }
    f.movie { create(:movie) }
    #f.movie_id { Faker::Number.number(2) }
    f.review { Faker::Lorem.paragraph }
  end
end
