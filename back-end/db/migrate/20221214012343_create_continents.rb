class CreateContinents < ActiveRecord::Migration[7.0]
  def change
    create_table :continents do |t|
      t.string :name
      t.string :lat
      t.string :lng
      t.integer :zoom
      t.timestamps
    end
  end
end
