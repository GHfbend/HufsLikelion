class Tip < ApplicationRecord
    has_many :tipcomments, dependent: :destroy
    belongs_to :user, required: false
    
  def self.search(search)
    where("content LIKE ? OR title LIKE ?", "%#{search}%", "%#{search}%")
  end
end
