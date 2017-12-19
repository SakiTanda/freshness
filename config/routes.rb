Rails.application.routes.draw do

  get 'root/index'
  root 'root#index'

  resources :foods
  resources :contacts, only: [:new, :create]

end
