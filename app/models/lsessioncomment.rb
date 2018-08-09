class Lsessioncomment < ApplicationRecord
    
    belongs_to :lsession, required: false
    belongs_to :user, required: false
end
