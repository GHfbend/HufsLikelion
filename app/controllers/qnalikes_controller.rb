class QnalikesController < ApplicationController
    before_action :authenticate_user!
    
    def like_toggle
        qnalike = Qnalike.find_by(user: current_user, qna_id: params[:id])
        if qnalike.nil?
            Qnalike.create!(user: current_user, qna_id: params[:id])
        else
            qnalike.destroy
        end
        redirect_to qna_url(params[:id])
    end
end
