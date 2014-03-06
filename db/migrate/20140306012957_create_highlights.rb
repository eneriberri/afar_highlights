class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      
      t.timestamps
    end
    
    add_index :highlights, :user_id
  end
  
end
