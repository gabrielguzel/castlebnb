Rails.application.routes.draw do
  devise_for :users
  resources :castles do
    resources :reservations, only: [:new , :create]
    resources :reviews, only: [:new, :create]
  end
  resources :reservations, only: [:new, :edit, :update, :delete]
  root to: 'pages#home'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
