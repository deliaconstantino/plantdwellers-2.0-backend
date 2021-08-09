Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :homes, only: [:index, :show, :create, :update]
      resources :plants, only: [:index, :create, :destroy]
      resources :plant_events, only: [:index, :update]
      post '/login', to: 'auth#login'
      post '/signup', to: 'users#create'
      get '/profile', to: 'users#profile'
      post '/logout', to: 'auth#delete'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
