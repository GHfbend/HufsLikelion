class Quiz < ApplicationRecord
    has_many :quizcomments, dependent: :destroy
    belongs_to :user, required: false
end
