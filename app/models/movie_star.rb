# Through model for the movie and star
class MovieStar < ApplicationRecord
  belongs_to :movie
  belongs_to :star
  enum role: [:hero,
              :heroin,
              :director,
              :producer,
              :supporting_actor]
end
