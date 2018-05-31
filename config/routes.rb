Rails.application.routes.draw do

  #qnas
  resources :qnas
  
  post 'qnas/:qna_id/qnacomments' => 'qnacomments#create', :as => 'qna_comments'

  delete 'qnas/:qna_id/qnacomments/:id' => 'qnacomments#destroy', :as => 'qna_comment'

  devise_for :users
  root 'home#index'
  
  get 'home/index'
  
  #회원 페이지
  get 'private/index'
  
  #질문 게시판 라우팅
  get 'qna/index'

  get 'qna/new'

  post 'qna/create' => 'qna#create'
  
  get 'qna/show/:id' => 'qna#show'
  
  get 'qna/edit/:id' => 'qna#edit'

  post 'qna/update/:id' => 'qna#update'

  get 'qna/destroy/:id' => 'qna#destroy'
  
  post 'qna/writecomment' => 'qna#writecomment'
  
  get 'qna/destroycomment/:qnacomment_id' => 'qna#destroycomment'
  
  get 'qna/reply/:id' => 'qna#reply'
  
  post 'qna/createreply' => 'qna#createreply'
  
  delete 'qna/destroyreply/:id' => 'qna#destroyreply'
  
  
  # get 'qna/'
  
  #수업 시간 자료 게시판 라우팅
  get 'session/index'

  get 'session/new'

  post 'session/create' => 'session#create'
  
  get 'session/show/:id' => 'session#show'
  
  get 'session/edit/:id' => 'session#edit'

  post 'session/update/:id' => 'session#update'

  get 'session/destroy/:id' => 'session#destroy'
  
  post 'session/writecomment' => 'session#writecomment'
  
  get 'session/destroycomment/:sessioncomment_id' => 'session#destroycomment'
  
  
  #꿀팁 계시판 라우팅
  get 'tip/index'

  get 'tip/new'

  post 'tip/create' => 'tip#create'
  
  get 'tip/show/:id' => 'tip#show'
  
  get 'tip/edit/:id' => 'tip#edit'

  post 'tip/update/:id' => 'tip#update'

  get 'tip/destroy/:id' => 'tip#destroy'
  
  post 'tip/writecomment' => 'tip#writecomment'
  
  get 'tip/destroycomment/:tipcomment_id' => 'tip#destroycomment'


  #퀴즈 게시판 라우팅
  get 'quiz/index'

  get 'quiz/new'

  post 'quiz/create' => 'quiz#create'
  
  get 'quiz/show/:id' => 'quiz#show'
  
  get 'quiz/edit/:id' => 'quiz#edit'

  post 'quiz/update/:id' => 'quiz#update'

  get 'quiz/destroy/:id' => 'quiz#destroy'
  
  post 'quiz/writecomment' => 'quiz#writecomment'
  
  get 'quiz/destroycomment/:quizcomment_id' => 'quiz#destroycomment'
  
  #슬랙 알림장 라우팅
  post 'private/slack_create' => 'private#slack_create'
  
  

  
end
