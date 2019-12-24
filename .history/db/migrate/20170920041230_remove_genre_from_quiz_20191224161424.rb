class RemoveGenreFromQuiz < ActiveRecord::Migration[5.1]
  def change
    
  end
  
  def change
    create_table :quiz do |t|
      t.text :content
      t.references :quizzes, :genre, :string
      t.timestamps   
  end
  remove_column :quizzes, :genre, :string
end
