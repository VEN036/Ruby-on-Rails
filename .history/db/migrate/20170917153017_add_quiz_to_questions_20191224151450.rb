class AddQuizToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :quiz, foreign_key: true
  end

  def change
    create_table :questions do |t|
      t.text :content
      t.references :questions, :quiz, 
  end
end
