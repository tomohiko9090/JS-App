Rails.application.routes.draw do
  root to: "users#show"

  get "signup", to: "users#new"
  post "signup", to: "users#create"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  resources :books

  # お気に入り
  get "likes", to: "likes#index", as: "likes"
  post "like/:book_id", to: "likes#create", as: "like"
  delete "like/:book_id", to: "likes#destroy", as: "unlike"
end