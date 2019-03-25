# == Schema Information
#
# Table name: movies
#
#  id                     :integer          not null, primary key
#  name                   :string
#  release_date           :date
#  short_description      :text
#  description            :text
#  genre                  :string
#  recommended            :boolean
#  age_bar                :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  wallpaper_file_name    :string
#  wallpaper_content_type :string
#  wallpaper_file_size    :integer
#  wallpaper_updated_at   :datetime
#

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
