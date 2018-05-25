class Tip < ApplicationRecord
    has_many :tipcomment, dependent: :destroy
    belongs_to :user, required: false
end
