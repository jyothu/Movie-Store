# == Schema Information
#
# Table name: movie_stars
#
#  id       :integer          not null, primary key
#  movie_id :integer
#  star_id  :integer
#  role     :integer          default("hero")
#

require 'faker'

FactoryGirl.define do
  factory :movie_star do |f|
    f.movie { create(:movie) }
    f.star { create(:star) }
  end
end
