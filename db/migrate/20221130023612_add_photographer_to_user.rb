class AddPhotographerToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :photographer, :boolean, default: false, null: false
  end
end