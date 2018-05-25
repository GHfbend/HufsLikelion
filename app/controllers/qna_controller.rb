class QnaController < ApplicationController
  def index
    @qnas = Qna.all
  end

  def new
  end

  def create
    @qna = Qna.new
    @qna.title = params[:title]
    @qna.content = params[:content]
    @qna.user_email = params[:user_email]
    @qna.save
    
    redirect_to '/qna/index'
    
  end

  def show
    @qna = Qna.find(params[:id])
  end
  
  def edit
    @qna = Qna.find(params[:id])
  end 
  
  
  def update
    @qna = Qna.find(params[:id])
    @qna.title = params[:title]
    @qna.content = params[:content]
    @qna.user_email = params[:user_email] 
    @qna.save
    
    redirect_to "/qna/show/#{@qna.id}"
    
    end

  def destroy
    @qna = Qna.find(params[:id])
    @qna.destroy
    redirect_to '/qna/index'
  end
  
  def writecomment
    @comment = Qnacomment.new
    @comment.content = params[:content]
    @comment.qna_id = params[:qna_id]
    @comment.user_email = params[:user_email]
    @comment.save
    redirect_to '/qna/index'
  end
  
end
