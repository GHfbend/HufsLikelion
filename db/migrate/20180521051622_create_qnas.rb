class CreateQnas < ActiveRecord::Migration[5.1]
  def change
    create_table :qnas do |t|
      
      t.string :title
      t.text :content
      t.string :user_email
      t.string :user_name
      t.integer :user_id
      
      t.integer :view_count,default: 0
      
      

      t.timestamps
    end
  end
end
