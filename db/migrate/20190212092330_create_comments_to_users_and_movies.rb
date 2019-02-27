# Migration to create comments to the user
class CreateCommentsToUsersAndMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :movie, index: true
      t.text :review
      t.timestamps
    end
  end
end
