Rails.application.routes.draw do
  get 'pages/dashboard'
  get 'meeting/index'
  get 'meeting/show'
  get 'event/index'
  resources :event, only: [:index, :show, :new, :create]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
