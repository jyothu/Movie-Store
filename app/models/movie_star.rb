class MovieStar < ApplicationRecord
  belongs_to :star
  belongs_to :movie
  enum role: [:hero, :heroin, :director, :producer, :supporting_actor]
end