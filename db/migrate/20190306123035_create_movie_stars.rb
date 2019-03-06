# Migration to create movie_stars
class CreateMovieStars < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_stars do |t|
      t.belongs_to :movie, index: true
      t.belongs_to :star, index: true
      t.integer :role, default: 0, index: true
    end
  end
end
