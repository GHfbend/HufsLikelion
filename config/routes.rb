Rails.application.routes.draw do
  get 'home/index'
  get 'home/index2' => 'home#index2'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
