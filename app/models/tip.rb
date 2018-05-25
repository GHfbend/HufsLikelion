class Tip < ApplicationRecord
    has_many :tipcomment
    belongs_to :user, required: false
end
