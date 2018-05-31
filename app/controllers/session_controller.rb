class SessionController < ApplicationController
  def index
    @sessions = Session.all
  end

  def new
  end

  def create
    @session = Session.new
    @session.title = params[:title]
    @session.content = params[:content]
    @session.s3_file = params[:input_file]
    @session.user_email = params[:user_email]
    @session.save
    
    redirect_to '/session/index'
    
  end

  def show
    @session = Session.find(params[:id])
    
    @session.view_count = @session.view_count + 1
    @session.save
  end
  
  def edit
    @session = Session.find(params[:id])
  end 
  
  
  def update
    @session = Session.find(params[:id])
    @session.title = params[:title]
    @session.content = params[:content]
    @session.user_email = params[:user_email] 
    @session.save
    
    redirect_to "/session/show/#{@session.id}"
    
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
    redirect_to '/session/index'
  end
  
  def writecomment
    @comment = Sessioncomment.new
    @comment.content = params[:content]
    @comment.session_id = params[:session_id]
    @comment.user_email = params[:user_email]
    @comment.save
    redirect_back(fallback_location: root_path)
  end
  
  def destroycomment
    @session = params[:session_id]
    destroycomment = Sessioncomment.find(params[:sessioncomment_id])
    destroycomment.destroy
    
    redirect_back(fallback_location: root_path)
    
    
  end
  

end
