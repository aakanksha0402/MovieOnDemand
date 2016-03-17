class CreateBookedSeats < ActiveRecord::Migration
  def change
    create_table :booked_seats do |t|
      t.references :theatre_seat
      t.references :booking, index: true, foreign_key: true
      t.string :status_of_booked_seat
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
