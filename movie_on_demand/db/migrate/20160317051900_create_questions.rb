class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_name
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
