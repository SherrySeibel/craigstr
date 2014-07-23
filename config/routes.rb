require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  constraints Monban::Constraints::SignedIn.new do
    get "/", to: "dashboards#index", as: :dashboard
    resources :regions, only: [:show, :create] do
      resources :categories, only: [:show, :create, :edit]
    end
    resources :admin_options, only: [:index, :create]
  end

    resources :posts, only: [:new, :create, :show, :edit, :update, :destroy] do
      resource :spam, only: [:create]
    end

  root to: "sessions#new"
end
