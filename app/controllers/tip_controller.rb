class TipController < ApplicationController
   def index
    @tips = Tip.all
  end

  def new
  end

  def create
    @tip = Tip.new
    @tip.title = params[:title]
    @tip.content = params[:content]
    @tip.user_email = params[:user_email]
    @tip.save
    
    redirect_to '/tip/index'
    
  end

  def show
    @tip = Tip.find(params[:id])
  end
  
  def edit
    @tip = Tip.find(params[:id])
  end 
  
  
  def update
    @tip = Tip.find(params[:id])
    @tip.title = params[:title]
    @tip.content = params[:content]
    @tip.user_email = params[:user_email] 
    @tip.save
    
    redirect_to "/tip/show/#{@tip.id}"
  end

  def destroy
    @tip = Tip.find(params[:id])
    @tip.destroy
    redirect_to '/tip/index'
  end
  
  def writecomment
    @comment = Tipcomment.new
    @comment.content = params[:content]
    @comment.tip_id = params[:tip_id]
    @comment.user_email = params[:user_email]
    @comment.save
    redirect_to '/tip/index'
  end
  
end
