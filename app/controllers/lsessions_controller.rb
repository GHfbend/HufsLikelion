class LsessionsController < ApplicationController
    before_action :set_lsession, only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource

  def index
    if params[:search]
      @lsessions = lsession.search(params[:search]).order("created_at DESC").page(params[:page]).per(10)
    else
      @lsessions = Lsession.all.order(created_at: :DESC).page(params[:page]).per(10)
    end
    # @tips = Tip.all.page(params[:page]).per(10)
  end

  def new
    @lsession=Lsession.new
  end

  def create    
    @lsession = Lsession.new(lsessions_params)
    @lsession.save
    redirect_to lsessions_path

  end

  def show
    @lsessioncomment = Lsessioncomment.new
    @lsessioncomments = @lsession.lsessioncomments
    @lsession.view_count = @lsession.view_count + 1
    @lsession.save
    
  end
  
  def edit
  end 
  
  
  def update
    @lsession.update(lsessions_params)
    redirect_to lsessions_path
  end

  def destroy
    @lsession.destroy
    redirect_to lsessions_path
  end
  
   private
   def set_lsession
    @lsession = Lsession.find(params[:id])
   end

   def lsessions_params
    params.require(:lsession).permit(:user_email, :user_name, :title, :content)
   end

end
