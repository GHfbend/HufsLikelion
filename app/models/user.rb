class User < ApplicationRecord

  has_many :tips
  has_many :qnas
  has_many :quizzes
  has_many :sessions
  has_many :tipcomments
  has_many :sessioncomments
  has_many :quizcomments
  has_many :qnacomments
  has_many :qnareplies
  has_many :qnalikes
  has_many :l_qnas, through: :qnalikes, source: :qna
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
 validates_format_of :email, with: /\@likelion\.org/, message: "likelion.org 계정으로만 가입 가능합니다!"
end
