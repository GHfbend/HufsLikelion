class Quiz < ApplicationRecord
    has_many :quizcomment
    belongs_to :user, required: false
end
