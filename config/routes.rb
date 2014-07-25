require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  constraints Monban::Constraints::SignedIn.new do
    get "/", to: "dashboards#index", as: :dashboard
    resources :users, only: [:show]
    resources :regions, only: [:show, :create] do
      resources :categories, only: [:new, :create]
    end
    resources :admin_options, only: [:index]
    resources :posts, only: [:new, :create, :show, :edit, :update, :destroy] do
      resource :spam, only: [:create]
    end
  end

  root to: "sessions#new"
end
