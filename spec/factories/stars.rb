# == Schema Information
#
# Table name: stars
#
#  id          :integer          not null, primary key
#  name        :string
#  role        :integer          default("hero")
#  age         :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'faker'

FactoryGirl.define do
  factory :star do |f|
    f.name { Faker::Name.name }
    f.role { Faker::Number.between(0, 4) }
    f.age { Faker::Number.number(2) }
  end
end
