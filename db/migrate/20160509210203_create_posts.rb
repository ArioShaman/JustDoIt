class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   :title
      t.text     :description
      t.text     :content
      t.string   :image
      t.belongs_to :categories
      t.belongs_to :art_tags, index: true#, foreign_key: true
      t.timestamps null: false
    end

  add_index :posts, :title, unique: true
  add_index :posts, :description, unique: true
  add_index :posts, :content, unique: true

  end
end
