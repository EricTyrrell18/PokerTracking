Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games do
    resources :players
    resources :hands
  end

  resources :statistics, only: [:index]
  root to: "games#index"
end
