Rails.application.routes.draw do
  resources :insurances

  devise_for :users
  root to: 'home#index'
end
