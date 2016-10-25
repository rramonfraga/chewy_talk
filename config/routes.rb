Rails.application.routes.draw do
  resources :users
  root 'welcome#index'

  resources :movies
  resources :searches, only: [:index]
end
