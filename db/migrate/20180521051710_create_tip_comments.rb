class CreateTipComments < ActiveRecord::Migration[5.1]
  def change
    create_table :tip_comments do |t|

      t.timestamps
    end
  end
end
