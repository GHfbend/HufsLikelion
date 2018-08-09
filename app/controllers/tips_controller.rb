class TipsController < ApplicationController
    before_action :set_tip, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search]
      @tips = Tip.search(params[:search]).order("created_at DESC").page(params[:page]).per(10)
    else
      @tips = Tip.all.order(created_at: :DESC).page(params[:page]).per(10)
    end
    # @tips = Tip.all.page(params[:page]).per(10)
  end

  def new
    @tip=Tip.new
  end

  def create    
    @tip = Tip.new(tips_params)
    @tip.save
    redirect_to tips_path

  end

  def show
    @tipcomment = Tipcomment.new
    @tipcomments = @tip.tipcomments
    @tip.view_count = @tip.view_count + 1
    @tip.save
  end
  
  def edit
  end 
  
  
  def update
    @tip.update(tips_params)
    redirect_to tips_path
  end

  def destroy
    @tip.destroy
    redirect_to tips_path
  end
  
   private
   def set_tip
    @tip = Tip.find(params[:id])
   end

   def tips_params
    params.require(:tip).permit(:user_email, :user_name, :title, :content)
   end

end
