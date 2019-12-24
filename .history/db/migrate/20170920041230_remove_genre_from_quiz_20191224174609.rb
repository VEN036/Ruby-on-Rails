class RemoveGenreFromQuiz < ActiveRecord::Migration[5.1]
  def change
    saftey remove_column :quizzes, :genre, :string
  end
end
