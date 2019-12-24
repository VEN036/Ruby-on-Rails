class RemoveSubgenreFromQuiz < ActiveRecord::Migration[5.1]
  def change
    remove_reference :quizzes, :subgenre, :string
  end
end
