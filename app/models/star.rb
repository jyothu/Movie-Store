class Star < ApplicationRecord
  has_many :movie_stars
  has_many :movies, through: :movie_stars
  validates :hero, :heroin, :director, :producer, :supporting_cast, presence: true
end