# Column name modification from movie_star_id to star_id
class ChangeMovieStarToStarInMovies < ActiveRecord::Migration[5.0]
  def change
    rename_column :movie_stars, :movie_star_id, :star_id
  end
end
