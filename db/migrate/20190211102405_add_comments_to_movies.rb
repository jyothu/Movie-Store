class AddCommentsToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :comments, :text
  end
end
