class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      
      t.string :title
      t.text :content
      t.string :user_email
      t.string :s3_file
      
      t.integer :view_count,default: 0

      t.timestamps
    end
  end
end
