class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.string :content
      t.string :user_email
      t.belongs_to :quiz, index: true, foreign_key: true

      t.timestamps
    end
  end
end
