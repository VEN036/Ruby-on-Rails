class Quiz < ApplicationRecord
	has_many :questions
	self.ignored
end
