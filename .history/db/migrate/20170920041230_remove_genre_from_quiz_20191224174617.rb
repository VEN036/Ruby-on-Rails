class RemoveGenreFromQuiz < ActiveRecord::Migration[5.1]
  def change
    safetyremove_column :quizzes, :genre, :string
  end
end
