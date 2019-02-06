class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :movie_name
      t.date :release_date
      t.text :small_description
      t.text :description
      t.string :genre 
      t.boolean :recommended?
      t.integer :age_bar
      #t.binary :wallpaper
      t.timestamps
    end

    create_table :stars do |t|
      t.belongs_to :movie, index: true
      t.string :hero
      t.string :heroin
      t.string :director
      t.string :producer
      t.string :supporting_cast
      t.timestamps 
    end
  end
end