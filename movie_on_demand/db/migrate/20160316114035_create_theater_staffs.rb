class CreateTheaterStaffs < ActiveRecord::Migration
  def change
    create_table :theater_staffs do |t|
      t.references :user, index: true, foreign_key: true
      t.references :theater, index: true, foreign_key: true
      t.references :staff_permission, index: true, foreign_key: true
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
