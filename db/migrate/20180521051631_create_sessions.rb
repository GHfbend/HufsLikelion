class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      
      t.string :title
      t.text :content
      t.string :user_email

      t.timestamps
    end
  end
end
