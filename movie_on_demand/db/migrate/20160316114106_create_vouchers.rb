class CreateVouchers < ActiveRecord::Migration
  def change
    create_table :vouchers do |t|
      t.references :theater, index: true, foreign_key: true
      t.references :theater_screen, index: true, foreign_key: true
      t.string :name
      t.string :description
      t.decimal :price, precision: 7, scale: 2
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
