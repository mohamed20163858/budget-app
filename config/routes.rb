Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  get '/user/:user_id/home', to: 'users#show', as: 'user'
  get '/categories/new', to: 'groups#new'
  post '/categories', to: 'groups#create', as: 'groups'
end
