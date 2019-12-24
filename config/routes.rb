Rails.application.routes.draw do
  post 'users/create'
  post 'users/new'
  get 'users/show'
  get 'users/new'
  get 'records/show'
  get 'records/new'
  get 'rooms/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'layouts#index'

end
