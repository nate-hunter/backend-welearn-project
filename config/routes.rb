Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :locations
      resources :bookings
    end
  end
end
