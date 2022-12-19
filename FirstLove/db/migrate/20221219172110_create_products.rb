class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :desc
      t.integer :price
      t.integer :discount
      t.string :category
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
