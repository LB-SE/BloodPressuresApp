Rails.application.routes.draw do
  root to: "home#index"

  resources :users

  namespace :health_tools do
    namespace :blood_pressure do
      resources :reading, only: [:index, :create, :show]
    end
  end
end
