Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  
  root to: 'tasks#index' 
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'users/new'
  get 'users/create'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create]

  resources :tasks
end
