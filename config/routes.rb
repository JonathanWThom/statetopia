Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :responses do
    resources :nations
  end

  resources :nations

end
