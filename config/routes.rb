Rails.application.routes.draw do
  post '/users', to: 'users#create'
  get '/users', to: 'users#index'
  patch '/users/colors', to: 'users#update_color'
  post '/users/colors', to: 'users#create_color'

  post '/auth', to: 'auth#create'
  get '/auth', to: 'auth#new'

  post '/patterns', to: 'patterns#create'
end
