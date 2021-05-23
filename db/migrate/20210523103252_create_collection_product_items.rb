class CreateCollectionProductItems < ActiveRecord::Migration[6.1]
  def change
    create_table :collection_product_items do |t|
      t.references :collection, null: false, foreign_key: true
      t.references :collection_product, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :color
      t.string :size
      t.decimal :unit_price
      t.integer :rating
      t.timestamps
    end
  end
end
