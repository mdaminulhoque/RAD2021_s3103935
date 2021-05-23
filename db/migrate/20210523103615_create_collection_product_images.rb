class CreateCollectionProductImages < ActiveRecord::Migration[6.1]
  def change
    create_table :collection_product_images do |t|
      t.references :collection_product_item, null: false, foreign_key: true
      t.string :url
      t.timestamps
    end
  end
end
