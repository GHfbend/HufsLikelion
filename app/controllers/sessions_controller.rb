class SessionsController < ApplicationController
    before_action :set_session, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search]
      @sessions = session.search(params[:search]).order("created_at DESC").page(params[:page]).per(10)
    else
      @sessions = Session.all.order(created_at: :DESC).page(params[:page]).per(10)
    end
    # @tips = Tip.all.page(params[:page]).per(10)
  end

  def new
    @session=Session.new
  end

  def create    
    @session = Session.new(sessions_params)
    @session.save
    redirect_to sessions_path

  end

  def show
    @sessioncomment = Sessioncomment.new
    @sessioncomments = @session.tipcomments
    @session.view_count = @session.view_count + 1
    @session.save
  end
  
  def edit
  end 
  
  
  def update
    @session.update(sessions_params)
    redirect_to sessions_path
  end

  def destroy
    @session.destroy
    redirect_to sessions_path
  end
  
   private
   def set_session
    @session = Session.find(params[:id])
   end

   def sessions_params
    params.require(:session).permit(:user_email, :user_name, :title, :content)
   end

end
