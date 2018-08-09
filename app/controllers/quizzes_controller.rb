class QuizzesController < ApplicationController

  before_action :set_quiz, only: [:show, :edit, :update, :destroy, :answer]
  load_and_authorize_resource
  
  def index
    if params[:search]
      @quizzes = Quiz.search(params[:search]).order("created_at DESC").page(params[:page]).per(10)
    else
      @quizzes = Quiz.all.order(created_at: :DESC).page(params[:page]).per(10)
    end
    # @quizzes = Quiz.all
  end

  def show
    @quizcomment = Quizcomment.new
    @quizcomments = @quiz.quizcomments
    
    @quiz.view_count = @quiz.view_count + 1
    @quiz.save
  end

  def new
    @quiz = Quiz.new
    
  end

  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.save
    redirect_to quizzes_path
  end

  def edit
  end

  def update
    @quiz.update(quiz_params)
    redirect_to quizzes_path
  end

  def destroy
    @quiz.destroy
    redirect_to quizzes_path
  end
  
  def answer
    @answer = params[:answer]
  end
  
  private 
  def set_quiz
    @quiz = Quiz.find(params[:id])
  end
  
  def quiz_params
      params.require(:quiz).permit(:user_email, :user_name, :title, :content, :answer_one, :answer_two, :answer_three, :answer_four, :answer_five, :the_answer)
  end
  
end
