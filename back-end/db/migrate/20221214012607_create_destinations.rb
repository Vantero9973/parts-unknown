class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :image
      t.string :description
      t.integer :lat
      t.integer :lng
      t.string :country_name
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
