Rails.application.routes.draw do
  
  resources :events
  
  'home/index'

  get 'home/index2'

  #devise 페이지
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  #루트 페이지
  root 'home#index'
  get 'home/index'
  
  #회원 페이지
  get 'private/index'
  get 'private/my_page'
  


  
  #qnas 페이지
  resources :qnas do
    resources :qnacomments, only: [:create, :destroy]
    resources :qnareplies, only: [:create, :destroy]
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
  
  resources :lsessions do
  resources :lsessioncomments, only: [:create, :destroy]
  end

  
  #슬랙 알림장 라우팅
  post 'private/slack_create' => 'private#slack_create'
  
  post '/tinymce_assets' => 'tinymce_assets#create'
  
  
  #좋아요 라우팅
  
  post '/qna/:id/like', to: 'qnalikes#like_toggle', as: 'like_qna'
  post '/quiz/:id/like', to: 'quizlikes#like_toggle', as: 'like_quiz'
  post '/session/:id/like', to: 'sessionlikes#like_toggle', as: 'like_session'
  post '/tip/:id/like', to: 'tiplikes#like_toggle', as: 'like_tip'

  #퀴즈 라우팅
  get '/quizzes/:id/answer' => 'quizzes#answer'

end
