class CreateQnareplies < ActiveRecord::Migration[5.1]
  def change
    create_table :qnareplies do |t|
      
      t.string :title
      t.string :user_email
      t.text :content
      t.belongs_to :qna, index: true, foreign_key: true

      t.timestamps
    end
  end
end
