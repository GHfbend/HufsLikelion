class TipcommentsController < ApplicationController
  
    
    
    def create
    @tipcomment = Tipcomment.new(tipcomment)
    @tipcomment.save
    
    redirect_to tip_path(params[:tip_id])
    end

  def destroy
    @tipcomment = Tipcomment.find(params[:id])
    @tipcomment.destroy
    redirect_to tip_path(params[:tip_id])
  end
  
  private
   def tipcomment
    params.require(:comment).permit(:content, :user_email, :tip_id)
   end
end
