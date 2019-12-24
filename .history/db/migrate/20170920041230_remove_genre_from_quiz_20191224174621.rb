class RemoveGenreFromQuiz < ActiveRecord::Migration[5.1]
  def change
    safety_assuredremove_column :quizzes, :genre, :string
  end
end
