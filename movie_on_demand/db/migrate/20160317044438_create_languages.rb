class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :language
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
