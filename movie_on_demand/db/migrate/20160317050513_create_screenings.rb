class CreateScreenings < ActiveRecord::Migration
  def change
    create_table :screenings do |t|
      t.references :movie, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :theater, index: true, foreign_key: true
      t.references :offer, index: true, foreign_key: true
      t.datetime :start_time
      t.date :date
      t.boolean :approval_filmmaker
      t.boolean :approval_theatre
      t.integer :threshold
      t.boolean :status
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
