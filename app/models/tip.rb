class Tip < ApplicationRecord
    has_many :tipcomments, dependent: :destroy
    belongs_to :user, required: false
end
