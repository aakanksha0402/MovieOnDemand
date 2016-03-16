class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :theater, index: true, foreign_key: true
      t.string :anme
      t.string :description
      t.decimal :discount, precision: 7, scale: 2
      t.string :promo_code
      t.date :starting_date
      t.date :ending_date
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
