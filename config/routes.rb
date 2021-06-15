Rails.application.routes.draw do

  resources :contacts
  root 'clients#index'
  resources :clients
  devise_for :users

end
