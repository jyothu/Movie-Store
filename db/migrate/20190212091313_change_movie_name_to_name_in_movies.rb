class ChangeMovieNameToNameInMovies < ActiveRecord::Migration[5.0]
  def change
    rename_column :movies, :movie_name, :name
  end
end
