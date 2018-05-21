class CreateQnaComments < ActiveRecord::Migration[5.1]
  def change
    create_table :qna_comments do |t|

      t.timestamps
    end
  end
end
