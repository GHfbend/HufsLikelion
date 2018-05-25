class Tipcomment < ApplicationRecord
    belongs_to :tip, required: false
    belongs_to :user, required: false
end
