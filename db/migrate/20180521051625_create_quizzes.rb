class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      
      t.string :title
      t.text :content
      t.string :user_email

      t.timestamps
    end
  end
end
