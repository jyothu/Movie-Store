# Migration to create stars
class CreateStarsForMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :stars do |t|
      t.string :name
      t.integer :role, default: 0, index: true
      t.integer :age
      t.text :description
      t.timestamps
    end
  end
end
