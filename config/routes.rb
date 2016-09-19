Rails.application.routes.draw do
  resources :blessings
  resources :insurances do
    member do
      get :pay
      get :claim
    end
  end

  devise_for :users
  root to: 'insurances#index'
end
