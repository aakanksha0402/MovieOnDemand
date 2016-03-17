class CreateQuestionAnswers < ActiveRecord::Migration
  def change
    create_table :question_answers do |t|
      t.references :survey, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true
      t.references :answer, index: true, foreign_key: true
    end
  end
end
