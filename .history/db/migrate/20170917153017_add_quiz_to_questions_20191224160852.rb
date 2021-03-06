class AddQuizToQuestions < ActiveRecord::Migration[5.1]
  
  def change
    create_table :questions do |t|
      t.text :content
      t.references :questions, :quiz, foreign_key: true
      t.timestamps
    end
  add_reference :questions, :quiz_id, :quiz, foreign_key: true
  end
end
