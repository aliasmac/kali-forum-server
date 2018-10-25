class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :media_element
      t.integer :author_id
      t.integer :score 

      t.timestamps
    end
  end
end
