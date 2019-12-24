class RemoveGenreFromQuiz < ActiveRecord::Migration[5.1]
  def change
    safety_assured remove_column :quizzes, :genre, :string
  end
end
