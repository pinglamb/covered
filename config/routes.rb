Rails.application.routes.draw do
  resources :insurances do
    member do
      get :pay
    end
  end

  devise_for :users
  root to: 'home#index'
end
