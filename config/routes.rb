require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  constraints Monban::Constraints::SignedIn.new do
    get "/", to: "regions#index", as: :regions
    resources :admin_options, only: [:index]
  end

  resources :posts, only: [:new, :create, :show]

  root to: "sessions#new"
end
