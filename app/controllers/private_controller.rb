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
end
