class RemoveGenreFromQuiz < ActiveRecord::Migration[5.1]
  def change
    remove_reference :quizzes, :genre, :string
  end
end
