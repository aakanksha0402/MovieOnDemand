class CreateMovieSuggestions < ActiveRecord::Migration
  def change
    create_table :movie_suggestions do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :details
      t.boolean :status
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
