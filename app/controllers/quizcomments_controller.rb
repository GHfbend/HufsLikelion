class QuizcommentsController < ApplicationController

    def create
    @quizcomment = Quizcomment.new(quizcomment)
    @quizcomment.save
    
    redirect_to quiz_path(params[:quiz_id])
    end

  def destroy
    @quizcomment = Quizcomment.find(params[:id])
    @quizcomment.destroy
    redirect_to quiz_path(params[:quiz_id])
  end
  
  private
   def quizcomment
    params.require(:quizcomment).permit(:content, :user_email, :quiz_id, :user_name)
   end
end
