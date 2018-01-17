Rails.application.routes.draw do
  post '/users', to: 'users#create'
  get '/users', to: 'users#index'

  post '/auth', to: 'auth#create'
  get '/auth', to: 'auth#new'

  post '/patterns', to: 'patterns#create'
end
