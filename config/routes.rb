Rails.application.routes.draw do
  devise_for :users
  resources :status_updates
  get 'pages/home'

  get 'pages/friends'

  get 'pages/group'

  get 'pages/images'

  get 'pages/loginregistar'

  root to: 'pages#home'
end
