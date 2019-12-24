class RemoveGenreFromQuiz < ActiveRecord::Migration[5.1]
  def change
    remove_column :quizzes, :genre, :string
  end
  
  def change
    create_table :quiz do |t|
      t.text :content
      t.   
  end
end
