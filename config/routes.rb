Rails.application.routes.draw do

root 'application#home'
get '/secrets', to: 'secrets#show'
get '/login', to: 'sessions#new'
post '/create', to: 'sessions#create'
post '/logout', to: 'sessions#destroy'

end
