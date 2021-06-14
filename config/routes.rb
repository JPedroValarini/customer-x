Rails.application.routes.draw do

  root 'clients#index'
  resources :clients
  devise_for :users

end
