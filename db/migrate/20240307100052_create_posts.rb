class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      
      t.string :star, null: false
      t.string :title, null: false
      t.string :boby
      t.integer :genre_id, null: false

      t.timestamps
    end
  end
end
