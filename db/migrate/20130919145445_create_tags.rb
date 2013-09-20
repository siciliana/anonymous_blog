class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tagwords
      t.timestamps
    end 
  end
end
