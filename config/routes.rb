Rails.application.routes.draw do

  config = Rails.application.config.st
  
  namespace :fresh, path: config[:fresh][:path] do
    root 'top#index'

    get 'top/index'
    resources :foods
    resource :contact, only: [:new, :create]
  end

  namespace :twitter, path: config[:twitter][:path] do
    root 'top#index'
  end
  
end
