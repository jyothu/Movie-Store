# Through model for the movie and star
class MovieStar < ApplicationRecord
  belongs_to :movie
  belongs_to :star

  enum role: { hero: 0, heroine: 1, director: 2, producer: 3, supporting_actor: 4 }
end
