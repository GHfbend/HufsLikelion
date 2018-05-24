class Qna < ApplicationRecord
    has_many :qnacomments
    belongs_to :user, required: false
end
