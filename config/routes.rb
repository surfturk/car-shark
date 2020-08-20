Rails.application.routes.draw do
  resources :loans do
    resources :cars
  end
  resources :cars
  resources :application, only: [:index]
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root 'application#index'
end

