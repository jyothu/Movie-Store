# == Schema Information
#
# Table name: movie_stars
#
#  id       :integer          not null, primary key
#  movie_id :integer
#  star_id  :integer
#  role     :integer          default("hero")
#

require 'spec_helper'

describe MovieStar do
  it 'should belong to Movie' do
    should belong_to(:movie)
  end

  it 'should belong to Star' do
    should belong_to(:star)
  end
end
