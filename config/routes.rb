Rails.application.routes.draw do
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  root 'home#index'
  
  get 'home/index'
  
  #회원 페이지
  get 'private/index'
  
  #qnas 페이지
  resources :qnas do
    resources :qnacomments, only: [:create, :destroy]
    resources :qnareplies, only: [:new, :create, :destroy]
  end
  
  # 팁

  get 'tips/index'

  get 'tips/new'

  get 'tips/create'

  get 'tips/edit'

  get 'tips/update'

  get 'tips/destroy'

  
  
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
  
  resources :tips do
    resources :tipcomments, only: [:create, :destroy]
  end
  # get 'tip/index'

  # get 'tip/new'

  # post 'tip/create' => 'tip#create'
  
  # get 'tip/show/:id' => 'tip#show'
  
  # get 'tip/edit/:id' => 'tip#edit'

  # post 'tip/update/:id' => 'tip#update'

  # get 'tip/destroy/:id' => 'tip#destroy'
  
  # post 'tip/writecomment' => 'tip#writecomment'
  
  # get 'tip/destroycomment/:tipcomment_id' => 'tip#destroycomment'


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
