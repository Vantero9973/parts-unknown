class CreateForums < ActiveRecord::Migration[7.0]
  def change
    create_table :forums do |t|
      t.references :user, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
