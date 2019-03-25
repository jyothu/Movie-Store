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

require 'spec_helper'

describe Movie do
  let!(:movie) { FactoryGirl.build(:movie) }

  it 'has a vaild factory' do
    FactoryGirl.create(:movie).should be_valid
  end

  it 'invalid without movie name' do
    movie.name = nil
    expect(movie).not_to be_valid
  end

  it 'invalid without movie release_date' do
    movie.release_date = nil
    expect(movie).not_to be_valid
  end

  it 'invalid without movie short_description' do
    movie.short_description = nil
    expect(movie).not_to be_valid
  end

  it 'invalid without movie genre' do
    movie.genre = nil
    expect(movie).not_to be_valid
  end

  it 'invalid without movie age_bar' do
    movie.age_bar = nil
    expect(movie).not_to be_valid
  end

  it 'age_bar cannot be greater than 99' do
    movie.age_bar = 100
    expect(movie).not_to be_valid
  end
end
