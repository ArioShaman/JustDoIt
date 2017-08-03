class CreateCategories < ActiveRecord::Migration
  def change
   	create_table :categories do |t|
      t.string :body
      t.timestamps null: false
    end
  end
end