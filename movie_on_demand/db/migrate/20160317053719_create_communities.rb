class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.references :user, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true
      t.text :description

      t.timestamps null: false
    end
  end
end
