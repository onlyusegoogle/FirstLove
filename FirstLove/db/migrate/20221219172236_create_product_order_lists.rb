class CreateProductOrderLists < ActiveRecord::Migration[7.0]
  def change
    create_table :product_order_lists do |t|
      t.references :product, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
