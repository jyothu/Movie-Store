# == Schema Information
#
# Table name: movie_stars
#
#  id       :integer          not null, primary key
#  movie_id :integer
#  star_id  :integer
#  role     :integer          default("hero")
#

# Through model for the movie and star
class MovieStar < ApplicationRecord
  belongs_to :movie
  belongs_to :star

  enum role: { hero: 0, heroine: 1, director: 2, producer: 3, supporting_actor: 4 }
end
