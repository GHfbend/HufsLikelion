Rails.application.routes.draw do
  
  #devise 페이지
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  #루트 페이지
  root 'home#index'
  get 'home/index'
  
  #회원 페이지
  get 'private/index'
  
  #qnas 페이지
  resources :qnas do
    resources :qnacomments, only: [:create, :destroy]
    resources :qnareplies, only: [:new, :create, :destroy]
  end
  
  #quizzes 페이지
  resources :quizzes do
    resources :quizcomments, only: [:create, :destroy]
  end
  
  #tips 페이지
  resources :tips do
    resources :tipcomments, only: [:create, :destroy]
  end
  
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
  
  
  # get 'tip/index'

  # get 'tip/new'

  # post 'tip/create' => 'tip#create'
  
  # get 'tip/show/:id' => 'tip#show'
  
  # get 'tip/edit/:id' => 'tip#edit'

  # post 'tip/update/:id' => 'tip#update'

  # get 'tip/destroy/:id' => 'tip#destroy'
  
  # post 'tip/writecomment' => 'tip#writecomment'
  
  # get 'tip/destroycomment/:tipcomment_id' => 'tip#destroycomment'

  
  #슬랙 알림장 라우팅
  post 'private/slack_create' => 'private#slack_create'
  
  post '/tinymce_assets' => 'tinymce_assets#create'
  
  

  
end
