class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :director
      t.string :starring
      t.date :released_on
      t.decimal :rating
      t.text :description
      t.string :duration
      t.integer :screening_count
      t.boolean :is_delete

      t.timestamps null: false
    end
  end
end
