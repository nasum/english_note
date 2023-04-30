Rails.application.routes.draw do
  get 'home' => 'home#index'

  resources :study_events, only: %i[index]
  resources :users
  resources :words
  resources :admin_user, only: %i[new create]

  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => 'user_sessions#create'
  get 'logout' => 'user_sessions#destroy', :as => :logout

  namespace :admin do
    root to: 'home#index'
    resource :application_setting, only: %i[edit update]
  end

  # Defines the root path route ("/")
  root 'top#index'
end
