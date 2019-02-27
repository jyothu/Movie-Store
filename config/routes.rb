Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'movies#index'

  get '/movies', to: 'movies#index'
  get '/movies/:id', to: 'movies#show'

  devise_for :users

  post '/comments', to: 'comments#create'

  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
end
