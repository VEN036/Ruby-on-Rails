class RemoveGenreFromQuiz < ActiveRecord::Migration[6.0]
  def change
    remove_column :quizzes, :genre, :string
  end
end
