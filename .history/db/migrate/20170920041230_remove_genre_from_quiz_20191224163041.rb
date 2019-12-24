class RemoveGenreFromQuiz < ActiveRecord::Migration[.1]
  def change
    remove_column :quizzes, :genre, :string
  end
end
