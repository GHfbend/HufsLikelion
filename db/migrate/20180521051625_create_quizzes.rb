class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      
      t.text :content
      t.string :user_email
      t.string :title
      t.string :user_name
      
      t.integer :view_count,default: 0
      
      t.timestamps
    end
  end
end
