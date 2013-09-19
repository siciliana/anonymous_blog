class CreateJointables < ActiveRecord::Migration
  def change
    create_join_table :posts, :tags, table_name: :labels do |t|
      t.integer :post_id
      t.integer :tag_id
      t.timestamps 
    end 
  end
end
