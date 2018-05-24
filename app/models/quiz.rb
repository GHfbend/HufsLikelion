class Quiz < ApplicationRecord
    has_many :quizcomment, dependent: :destroy
    belongs_to :user, required: false
end
