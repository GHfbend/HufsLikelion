class Sessioncomment < ApplicationRecord
    belongs_to :session, required: false
    belongs_to :user, required: false
end
