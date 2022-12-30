class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.float :lat
      t.float :lng
      t.integer :zoom
      t.references :continent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
