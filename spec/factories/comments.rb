# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  movie_id   :integer
#  review     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'faker'

FactoryGirl.define do
  factory :comment do |f|
    f.user { create(:user) }
    f.movie { create(:movie) }
    f.review { Faker::Lorem.paragraph }
  end
end
