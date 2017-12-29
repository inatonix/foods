Rails.application.routes.draw do
  get 'sessions/new'

  get '/home', to:'main#home'
  get '/about', to:'main#about'
  get '/events', to:'main#events'
  post '/events', to:'main#create_event'
  get '/admin', to:'main#admin'

  get '/login', to:'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
