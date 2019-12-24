class AddQuizToQuestions < ActiveRecord::Migration[5.1]
  def change
    
  end

  def change
    create_table :questions do |t|
      t.text :content
      t.references :questions, :quiz, foreign_key: true
      t.timestamps
  end
  
end
