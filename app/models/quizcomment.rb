class Quizcomment < ApplicationRecord
    belongs_to :quiz, required: false
    belongs_to :user, required: false
end
