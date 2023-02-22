Rails.application.routes.draw do
  root 'propers#index'
  resources :propers
end
