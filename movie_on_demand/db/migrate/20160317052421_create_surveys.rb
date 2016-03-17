class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.text :description
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
