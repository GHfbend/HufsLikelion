class Qna < ApplicationRecord
    has_many :qnacomment, dependent: :destroy
    belongs_to :user, required: false
end
