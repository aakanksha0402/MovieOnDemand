class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fullname, :string
    add_column :users, :dob, :date
    add_column :users, :gender, :string
    add_column :users, :profile_pic, :string
    add_column :users, :address, :text
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :pincode, :string
    add_column :users, :role, :string
    add_column :users, :account, :string
  end
end
