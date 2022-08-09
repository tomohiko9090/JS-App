Rails.application.routes.draw do
  # get 'owners/index'
  # get 'owners/new'
  resources :owners
  resources :pets

end
