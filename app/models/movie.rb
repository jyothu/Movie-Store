class Movie < ApplicationRecord
    has_many :stars, through => :movie_stars
    has_attached_file :photo
end
