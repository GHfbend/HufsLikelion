class QnacommentsController < ApplicationController
    def create
    @qnacomment = Qnacomment.new(qnacomment)
    @qnacomment.save
    
    redirect_to qna_path(params[:qna_id])
    end

  def destroy
    @qnacomment = Qnacomment.find(params[:id])
    @qnacomment.destroy
    redirect_to qna_path(params[:qna_id])
  end
  
  private
   def qnacomment
    params.require(:qnacomment).permit(:content, :user_email, :qna_id, :user_name)
   end
end
