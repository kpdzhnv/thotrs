Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'

  get 'layouts/index'

  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'

  post 'users/create'
  post 'users/new'
  get 'users/show'
  get 'users/new'

  post 'records/create'
  post 'records/new'
  get 'records/show'
  get 'records/new'

  get 'rooms/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'layouts#index'

end
