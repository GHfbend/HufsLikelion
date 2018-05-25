class Qna < ApplicationRecord
    has_many :qnacomment
    belongs_to :user, required: false
end
