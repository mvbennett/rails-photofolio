class CreatePhotographs < ActiveRecord::Migration[6.1]
  def change
    create_table :photographs do |t|
      t.string :title
      t.references :gallery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
