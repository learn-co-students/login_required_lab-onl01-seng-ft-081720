Rails.application.routes.draw do

 
  resources :sessions, only: [:new, :create]
  post '/sessions/destroy'
  get '/secrets/show', to: 'secrets#show'
  # resources :secrets, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
