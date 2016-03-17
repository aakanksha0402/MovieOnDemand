class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.references :movie, index: true, foreign_key: true
      t.text :whatsapp
      t.text :facebook
      t.text :twitter
      t.string :link
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
