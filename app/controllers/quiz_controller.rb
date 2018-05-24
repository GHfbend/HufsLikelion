class QuizController < ApplicationController
   def index
    @quizzes = Quiz.all
  end

  def new
  end

  def create
    @quiz = Quiz.new
    @quiz.title = params[:title]
    @quiz.content = params[:content]
    @quiz.user_email = params[:user_email]
    @quiz.save
    
    redirect_to '/quiz/index'
    
  end

  def show
    @quiz = Quiz.find(params[:id])
  end
  
  def edit
    @quiz = Quiz.find(params[:id])
  end 
  
  
  def update
    @quiz = Quiz.find(params[:id])
    @quiz.title = params[:title]
    @quiz.content = params[:content]
    @quiz.user_email = params[:user_email] 
    @quiz.save
    
    redirect_to "/quiz/show/#{@quiz.id}"
    
  end

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    redirect_to '/quiz/index'
  end
  
  def writecomment
    @comment = Quizcomment.new
    @comment.content = params[:content]
    @comment.quiz_id = params[:quiz_id]
    @comment.user_email = params[:user_email]
    @comment.save
    redirect_to '/quiz/index'
  end
  
end
