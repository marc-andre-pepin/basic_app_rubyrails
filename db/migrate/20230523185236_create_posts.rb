class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|

      t.string  :text_content
      t.integer :like_count

      t.timestamps
      
    end
  end
end
