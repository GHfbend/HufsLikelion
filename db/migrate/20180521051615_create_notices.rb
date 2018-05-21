class CreateNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :notices do |t|
      
      t.string :user_name
      t.text :token
      t.text :content

      t.timestamps
    end
  end
end
