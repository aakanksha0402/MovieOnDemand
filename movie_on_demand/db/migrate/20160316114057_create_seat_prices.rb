class CreateSeatPrices < ActiveRecord::Migration
  def change
    create_table :seat_prices do |t|
      t.references :theater, index: true, foreign_key: true
      t.decimal :weekdays, precision: 7, scale: 2
      t.decimal :weekends, precision: 7, scale: 2
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
