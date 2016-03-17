class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :bookedseat
      t.decimal :amount
      t.string :mode_of_payment
      t.boolean :status_of_payment
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
