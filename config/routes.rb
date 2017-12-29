Rails.application.routes.draw do
  get 'main/home'

  get 'main/about'

  get 'main/reserve'

  get 'main/events'

  get 'main/admin'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
