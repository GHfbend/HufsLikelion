class CreateTips < ActiveRecord::Migration[5.1]
  def change
    create_table :tips do |t|
      
      t.string :title
      t.text :content
      t.string :user_email
      
      t.integer :view_count,default: 0

      t.timestamps
    end
  end
end
