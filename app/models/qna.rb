class Qna < ApplicationRecord
    has_many :qnacomments, dependent: :destroy
    has_many :qnareplies, dependent: :destroy
    belongs_to :user, required: false
    
    # acts_as_punchable
    
  def self.search(search)
    where("content LIKE ? OR title LIKE ?", "%#{search}%", "%#{search}%")
  end
end
