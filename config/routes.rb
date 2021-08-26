Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :sleeps, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
end

