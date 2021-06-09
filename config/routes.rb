Rails.application.routes.draw do
  get 'room_lists/index'
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:show, :new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
