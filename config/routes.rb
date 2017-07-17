Rails.application.routes.draw do
  root 'static_pages#home'
  resources :static_pages, only: :index
  devise_for :users
  namespace :api do
    resources :vehicles, only: [:create, :index]
  end
end
