Rails.application.routes.draw do
  resources :ingredients
  resources :recipes
  root to: 'static#welcome'

  resources :users
  
  get '/auth/:provider/callback', to: 'sessions#create'
  get    'login',   to: 'sessions#new'
  post   'login',   to: 'sessions#create'
  get    'logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
