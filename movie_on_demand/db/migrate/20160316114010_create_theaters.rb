class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.integer :phone
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :pincode
      t.string :unique_key
      t.integer :total_screens
      t.boolean :enable
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
