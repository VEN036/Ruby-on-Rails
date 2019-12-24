class AddGenreToQuiz < ActiveRecord::Migration[5.1]
    def change
      create_table :quiz do |t|
        t.text :content
        t.references :quizzes
        t.timestamps
    end
    add_column :quiz, :genre, :string
  end
end
