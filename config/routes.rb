Rails.application.routes.draw do
  root to: "home#index"

  resources :users

  namespace :health_tools do
    resources :blood_pressure, only: [:new, :index, :show]
  end
end
