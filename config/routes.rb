Rails.application.routes.draw do
    root "homes#index"
    get "/home/about", to: "homes#show", as: "homes_show"
    devise_for :users
    resources :users, only: [:index, :show, :edit, :update]
    resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
end
