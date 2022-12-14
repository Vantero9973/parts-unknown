class CreateShopItems < ActiveRecord::Migration[7.0]
  def change
    create_table :shop_items do |t|
      t.string :name
      t.string :image
      t.string :description
      t.string :category
      t.integer :price
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
