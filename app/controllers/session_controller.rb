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
    @session.user_email = params[:user_email]
    @session.save
    
    redirect_to '/session/index'
    
  end

  def show
    @session = Session.find(params[:id])
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
end
