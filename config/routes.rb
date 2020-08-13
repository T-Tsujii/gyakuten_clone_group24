Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'movies#index'
  resources :movies, only: [:index, :update]
  resources :movies do
    resource :watched_movies, only: [:create, :destroy]
  end
  resources :aws_texts, only: [:index, :show]
  resources :questions, except: [:destroy] do
    resources :solutions, only: [:index, :create]
  end

  resources :texts
  resources :line_texts, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end