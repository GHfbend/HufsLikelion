class CreateSessioncomments < ActiveRecord::Migration[5.1]
  def change
    create_table :sessioncomments do |t|
      t.string :content
      t.string :user_email
      t.belongs_to :session, index: true, foreign_key: true

      t.timestamps
    end
  end
end
