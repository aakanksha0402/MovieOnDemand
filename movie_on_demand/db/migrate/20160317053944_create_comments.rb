class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :community, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :comment

      t.timestamps null: false
    end
  end
end
