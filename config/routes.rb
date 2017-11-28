Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'root/index'
  root 'root#index'

  resources :foods
  resources :contacts, only: [:new, :create]

end
