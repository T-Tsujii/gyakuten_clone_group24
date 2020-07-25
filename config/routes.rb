Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'movies#index'
  resources :movies, only: [:index, :update]
  resources :aws_texts, only: [:index]
  resources :questions, only: [:index, :show, :create] do
    resources :solutions, only: [:index, :create]
  end
  resources :ruby_rails_texts, only: [:index, :show]
  resources :line_texts, only: [:index, :show]
  resources :monetizes, only: [:index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end