Rails.application.routes.draw do
  resources :status_updates
  get 'pages/home'

  get 'pages/friends'

  get 'pages/group'

  get 'pages/images'

  root to: 'pages#home'
end
