# Column name modification from small_description to short_description
class ChangeSmallDescToShortDescInMovies < ActiveRecord::Migration[5.0]
  def change
    rename_column :movies, :small_description, :short_description
  end
end
