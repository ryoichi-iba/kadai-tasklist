Rails.application.routes.draw do
  get 'users/new'
  
  get 'sessions/new'
  
  get 'signup', to: 'users#new'

  root to: 'tasks#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :tasks
  resources :users, only: [:index, :show, :new, :create]
  end