class Quiz < ApplicationRecord
	has_many :questions
	self.ignored_columns = [""]
end
