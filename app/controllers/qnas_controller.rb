class QnasController < ApplicationController
  
  before_action :set_qna, only: [:show, :edit, :update, :destroy]
  
  def index
    @qnas = Qna.all
  end

  def show
    @qnacomment = Qnacomment.new
    @qnacomments = @qna.qnacomments
    
    @qnareply = Qnareply.new
    @qnareplies = @qna.qnareplies
    
    @qna.view_count = @qna.view_count + 1
    @qna.save
  end

  def new
    @qna = Qna.new
  end

  def create
    @qna = Qna.new(qna_params)
    @qna.save
    redirect_to qnas_path
  end

  def edit
  end

  def update
    @qna.update(qna_params)
    redirect_to qnas_path
  end

  def destroy
    @qna.destroy
    redirect_to qnas_path
  end
  
  private 
  def set_qna
    @qna = Qna.find(params[:id])
  end
  
  def qna_params
      params.require(:qna).permit(:user_email, :title, :content)
  end
end
