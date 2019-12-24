class AddGenreToQuiz < ActiveRecord::Migration[5.1]
    def change
      create_table :quiz do ||
    
    end
    add_column :quizzes, :genre, :string
  end
end
