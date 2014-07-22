require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  constraints Monban::Constraints::SignedIn.new do
    get "/", to: "dashboards#index", as: :dashboard
    resources :admin_options, only: [:index, :create]
    resources :regions, only: [:create]
    resources :categories, only: [:create]
  end

  resources :posts, only: [:new, :create, :show, :edit, :update]

  root to: "sessions#new"
end
