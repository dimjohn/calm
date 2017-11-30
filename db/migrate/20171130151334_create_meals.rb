class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :category
      t.datetime :cooked_at
      t.integer :price
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
