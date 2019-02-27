# Migration to add first and last name to users
class AddFirstLastnameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
