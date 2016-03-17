class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :screening, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :seat_count
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
