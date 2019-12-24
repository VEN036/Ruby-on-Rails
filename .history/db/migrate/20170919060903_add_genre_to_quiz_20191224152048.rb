class AddGenreToQuiz < ActiveRecord::Migration[5.1]
  def change
    
  end
    add_column :quizzes, :genre, :string
  end
end
