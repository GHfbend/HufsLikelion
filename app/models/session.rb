class Session < ApplicationRecord
    has_many :sessioncomment
    belongs_to :user, required: false
end
