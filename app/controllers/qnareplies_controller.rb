class QnarepliesController < ApplicationController
    
    def new
        @qnareply = Qnareply.new
        @bringqna = params[:qna_id]
    end
        
    def create
        @qnareply = Qnareply.new(qnareplies)
        @qnareply.save
        
        redirect_to qna_path(params[:qna_id])
    end
    
    def destroy
        @qnareply = Qnareply.find(params[:id])
        @qnareply.destroy
        
        redirect_to qna_path(params[:qna_id])
    end
    
    private
    def qnareplies
        params.require(:qnareply).permit(:title, :content, :user_email, :qna_id, :user_name)
    end
end

