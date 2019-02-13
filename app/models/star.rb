class Star < ApplicationRecord
  has_many :movie_stars
  has_many :movies, through: :movie_stars
end