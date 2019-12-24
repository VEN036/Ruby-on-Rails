class RemoveGenreFromQuiz < ActiveRecord::Migration[5.1]
  def change
    safety_assremove_column :quizzes, :genre, :string
  end
end
