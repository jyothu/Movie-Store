Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'movies#index'

  resources :movies
  
  devise_for :users

  resources :comments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
