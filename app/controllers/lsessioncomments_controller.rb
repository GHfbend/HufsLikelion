class LsessioncommentsController < ApplicationController
  
    def create
    @lsessioncomment = Lsessioncomment.new(lsessioncomment)
    @lsessioncomment.save
    
    redirect_to lsession_path(params[:lsession_id])
    end

  def destroy
    @lsessioncomment = Lsessioncomment.find(params[:id])
    @lsessioncomment.destroy
    redirect_to lsession_path(params[:lsession_id])
  end
  
  private
   def lsessioncomment
    params.require(:lsessioncomment).permit(:content, :user_email, :lsession_id, :user_name)
   end
end
