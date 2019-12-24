class AddQuizToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :quiz, foreign_key: true
  end

  def change
    create_table :microposts
  end
end
