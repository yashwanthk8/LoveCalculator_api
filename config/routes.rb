Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check
  resources :love_results, only: [:create]
  namespace :admin do
    resources :love_results, only: [:index]
  end
  
end
