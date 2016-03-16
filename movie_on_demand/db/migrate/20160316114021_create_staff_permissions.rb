class CreateStaffPermissions < ActiveRecord::Migration
  def change
    create_table :staff_permissions do |t|
      t.boolean :manage_seat
      t.boolean :manage_vouchers
      t.boolean :manage_show_time
      t.boolean :manage_tax_info
      t.boolean :manage_price_per_day
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
