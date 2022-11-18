class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :item_name
      t.string :product_type
      t.integer :price
    end
  end
end
