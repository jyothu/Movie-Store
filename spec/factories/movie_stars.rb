require 'faker'

FactoryGirl.define do
  factory :movie_star do |f|
    f.movie { create(:movie) }
    f.star { create(:star) }
  end
end
