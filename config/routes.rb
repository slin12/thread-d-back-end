Rails.application.routes.draw do
  post '/users', to: 'users#create'

  post '/auth', to: 'auth#create'
end
