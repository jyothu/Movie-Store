# Model for star which has many movie stars and movies through movie stars
class Star < ApplicationRecord
  has_many :movie_stars
  has_many :movies, through: :movie_stars
  validates :hero, :heroin, :director, :producer, :supporting_cast,
    presence: true
end
