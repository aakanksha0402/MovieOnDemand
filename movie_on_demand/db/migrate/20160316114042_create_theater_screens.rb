class CreateTheaterScreens < ActiveRecord::Migration
  def change
    create_table :theater_screens do |t|
      t.references :theater, index: true, foreign_key: true
      t.integer :screen_no
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
