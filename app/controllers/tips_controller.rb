class TipsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
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
    @tip = Tip.new
    @tip.save
    if @tip.save
      redirect_to @tip
    else
      render :new
    end
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
    @tip.update(tip_params)
    redirect_to @tip
  end

  def destroy
    @tip.destroy
    redirect_to tips_path
  end
  
   private
   def set_tip
    @tip = Tip.find(params[:id])
   end


end
