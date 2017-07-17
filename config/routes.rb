Rails.application.routes.draw do
  namespace :api do
    resources :vehicles, only: [:create, :index]
  end
end
