class Qna < ApplicationRecord
    resourcify
    has_many :qnacomments, dependent: :destroy
    has_many :qnareplies, dependent: :destroy
    belongs_to :user, required: false
    
    has_many :impressions, :as=>:impressionable
    has_many :qnalikes
    has_many :l_users, through: :qnalikes, source: :user
    # acts_as_punchable
    
  def self.search(search)
    where("content LIKE ? OR title LIKE ?", "%#{search}%", "%#{search}%")
  end
  
  def impression_count
    impressions.size
  end
  
  def unique_impression_count
    impressions.group(:ip_address).size.keys.length
  end
end

