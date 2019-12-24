class RemoveGenreFromQuiz < ActiveRecord::Migration[5.1]
  def change
    remove_refer :quizzes, :genre, :string
  end
end
