class CreateQuizComments < ActiveRecord::Migration[5.1]
  def change
    create_table :quiz_comments do |t|

      t.timestamps
    end
  end
end
