class RemoveSubgenreFromQuiz < ActiveRecord::Migration[5.1]
  def change
    safety_assured remove_column :quizzes, :subgenre, :string
  end
end
