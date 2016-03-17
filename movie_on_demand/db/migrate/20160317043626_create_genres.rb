class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name
      t.integer :parent_id
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
