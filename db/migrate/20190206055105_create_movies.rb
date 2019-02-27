# Migration to create movies
class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :movie_name
      t.date :release_date
      t.text :small_description
      t.text :description
      t.string :genre
      t.boolean :recommended
      t.integer :age_bar
      t.timestamps

      create_table :stars do |t|
        t.string :hero
        t.string :heroin
        t.string :director
        t.string :producer
        t.string :supporting_cast
        t.timestamps
      end

      create_table :movie_stars do |t|
        t.belongs_to :movie, index: true
        t.belongs_to :movie_star, index: true
        t.string :role
      end
    end
  end
end
