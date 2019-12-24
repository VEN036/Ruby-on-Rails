class Event < ApplicationRecord
    has_one :quiz
    has_one :user

end