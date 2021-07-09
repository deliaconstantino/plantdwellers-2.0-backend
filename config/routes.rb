Rails.application.routes.draw do
  #TODO delete unused routes

  namespace :api do
    namespace :v1 do
      resources :homes
      resources :users
      resources :plants
      resources :plant_events
      post '/login', to: 'auth#login'
      get '/profile', to: 'auth#profile'
      post '/logout', to: 'auth#delete'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
