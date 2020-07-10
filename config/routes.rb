Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'movies#index'
  resources :aws_texts, only: [:index]
<<<<<<< HEAD
  resources :questions, only: [:index, :create]
=======
  resources :questions, only: [:index, :show]
>>>>>>> master
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
