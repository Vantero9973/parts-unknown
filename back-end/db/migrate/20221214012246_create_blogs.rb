class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :body
      t.string :description
      t.string :date
      t.string :image
      t.integer :likes
      t.string :read_time
      t.string :category_one
      t.string :category_two
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
