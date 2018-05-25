class Session < ApplicationRecord
    has_many :sessioncomment, dependent: :destroy
    belongs_to :user, required: false
end
