class AddGenreToQuiz < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :genre, :string
  end

  def change
    create_table :quiz do |t|
    t.text :content
    t.references :quiz
  end
  
end
