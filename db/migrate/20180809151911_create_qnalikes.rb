class CreateQnalikes < ActiveRecord::Migration[5.1]
  def change
    create_table :qnalikes do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :qna, foreign_key: true

      # t.timestamps
    end
  end
end
