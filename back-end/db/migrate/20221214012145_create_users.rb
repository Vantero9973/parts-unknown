class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :password_digest
      t.string :image
      t.boolean :admin

      t.timestamps
    end
  end
end
