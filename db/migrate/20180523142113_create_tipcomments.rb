class CreateTipcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :tipcomments do |t|

      t.string :content
      t.string :user_email
      t.integer :tip_id
      t.belongs_to :tip, index: true, foreign_key: true

      t.timestamps
    end
  end
end
