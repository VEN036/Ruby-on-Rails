class Event < ApplicationRecord
    has_one :quiz
    has_one :user

    def get_user
        User.find(Event.user_id)
    end

    def get_quiz
        Quiz.find(Event.quiz_id)
    end

    def get_question
        
    end

end