class CreateTheaterSeats < ActiveRecord::Migration
  def change
    create_table :theater_seats do |t|
      t.references :theater_screen, index: true, foreign_key: true
      t.string :seat_type
      t.integer :row_count
      t.integer :column_count
      t.decimal :price_multiple_factor, precision: 5, scale: 2
      t.decimal :tax_payable, precision: 7, scale: 2

      t.timestamps null: false
    end
  end
end
