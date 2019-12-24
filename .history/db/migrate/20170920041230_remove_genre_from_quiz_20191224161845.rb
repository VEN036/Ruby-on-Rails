class RemoveGenreFromQuiz < ActiveRecord::Migration[5.1]
  def change
    remove_column :quizzes, :genre, :string
  end
  
  def change
    create_table :removegenrefromquiz do |t|
      t.text :content
      t.references :quizzes, :genre, :string
      t.timestamps   
  end
end
