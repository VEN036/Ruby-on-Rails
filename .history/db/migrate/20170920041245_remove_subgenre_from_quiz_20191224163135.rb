class RemoveSubgenreFromQuiz < ActiveRecord::Migration[6]
  def change
    remove_column :quizzes, :subgenre, :string
  end
end
