class CreateContinents < ActiveRecord::Migration[7.0]
  def change
    create_table :continents do |t|
      t.string :name
      t.string :image
      t.float :lat
      t.float :lng
      t.integer :zoom
      t.timestamps
    end
  end
end
