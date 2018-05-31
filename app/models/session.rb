class Session < ApplicationRecord
    mount_uploader :s3_file, S3Uploader
    has_many :sessioncomments, dependent: :destroy
    belongs_to :user, required: false
    
end
