class Qnacomment < ApplicationRecord
    belongs_to :qna, required: false
    belongs_to :user, required: false
end
