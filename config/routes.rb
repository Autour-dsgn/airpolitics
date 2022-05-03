Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  resources :politicians, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index, :show, :new, :create]
    resources :reviews, only: [:index, :new, :create]
  end
end
