# Migration to create movies
class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.date :release_date
      t.text :short_description
      t.text :description
      t.string :genre
      t.boolean :recommended
      t.integer :age_bar
      t.timestamps
    end
  end
end
