class QnasController < ApplicationController
  
  before_action :set_qna, only: [:show, :edit, :update, :destroy]
  before_action :log_impression, only: [:show]
  load_and_authorize_resource
  
  def index
    if params[:search]
      @qnas = Qna.search(params[:search]).order("created_at DESC").page(params[:page]).per(10)
    else
      @qnas = Qna.all.order(created_at: :DESC).page(params[:page]).per(10)
    end
    # @qnas = Qna.all
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
  
  def log_impression
    @hit_post = Qna.find(params[:id])
    @hit_post.impressions.create(ip_address: request.remote_ip, user_id:current_user.id)
  end
  
  private 
  def set_qna
    @qna = Qna.find(params[:id])
  end
  
  def qna_params
      params.require(:qna).permit(:user_email, :user_name, :title, :content)
  end
  
end
