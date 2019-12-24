class RemoveSubgenreFromQuiz < ActiveRecord::Migration[]
  def change
    remove_column :quizzes, :subgenre, :string
  end
end
