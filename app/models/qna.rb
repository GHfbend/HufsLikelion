class Qna < ApplicationRecord
    has_many :qnacomments, dependent: :destroy
    has_many :qnareplies, dependent: :destroy
    belongs_to :user, required: false
end
