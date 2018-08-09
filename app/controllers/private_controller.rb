class PrivateController < ApplicationController
    
    skip_before_action :verify_authenticity_token
    
    def index
        @slack = Notice.all
    end
    
    def slack_create
        slack_create = Notice.new
        slack_create.user_name = params[:user_name]
        slack_create.content = params[:text]
        slack_create.save
    end
    
    def my_page
        @user = current_user
        @my_quiz = Quiz.where(user_email: @user.email).all
        @my_qna = Qna.where(user_email: @user.email).all
        @my_session = Lsession.where(user_email: @user.email).all
        @my_tip = Tip.where(user_email: @user.email).all
    end
end
