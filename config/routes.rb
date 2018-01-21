Rails.application.routes.draw do

  config = Rails.application.config.st
  
  namespace :fresh, path: config[:freshness][:path] do
    root 'root#index'

    get 'root/index'
    resources :foods
    resource :contact, only: [:new, :create]
  end

end
