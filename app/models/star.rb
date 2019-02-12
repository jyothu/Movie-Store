class Star < ApplicationRecord
    has_many :movies, through => :movie_stars
end