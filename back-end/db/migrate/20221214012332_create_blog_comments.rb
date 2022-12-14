class CreateBlogComments < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_comments do |t|
      t.string :body
      t.string :date
      t.integer :likes
      t.references :blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
