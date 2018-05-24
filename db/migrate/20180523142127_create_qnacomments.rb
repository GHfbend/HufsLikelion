class CreateQnacomments < ActiveRecord::Migration[5.1]
  def change
    create_table :qnacomments do |t|
      t.string :content
      t.string :user_email
      t.belongs_to :qna, index: true, foreign_key: true

      t.timestamps
    end
  end
end
