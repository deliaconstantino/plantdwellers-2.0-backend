Rails.application.routes.draw do
  #TODO delete unused routes

  namespace :api do
    namespace :v1 do
      resources :homes
      resources :users
        end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
