class CreateSessionComments < ActiveRecord::Migration[5.1]
  def change
    create_table :session_comments do |t|

      t.timestamps
    end
  end
end
