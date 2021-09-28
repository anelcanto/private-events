Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  get 'events/new'
  get 'events/index'
  root 'events#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :events
end
