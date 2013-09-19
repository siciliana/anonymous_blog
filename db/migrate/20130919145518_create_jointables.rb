class CreateJointables < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.integer :post_id
      t.integer :tag_id
      t.timestamps 
    end 
  end
end
