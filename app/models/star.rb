# Model for star which has many movie stars and movies through movie stars
class Star < ApplicationRecord
  has_many :movie_stars
  has_many :movies, through: :movie_stars
  enum role: { hero: 0, heroine: 1, director: 2, producer: 3, supporting_actor: 4 }
  # validates :hero, :heroin, :director, :producer, :supporting_cast,
  #   presence: true
end
