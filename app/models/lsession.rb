class Lsession < ApplicationRecord
    has_many :lsessioncomments, dependent: :destroy
    resourcify
    belongs_to :user, required: false
    
  def self.search(search)
    where("content LIKE ? OR title LIKE ?", "%#{search}%", "%#{search}%")
  end
end
