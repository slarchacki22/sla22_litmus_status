Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :status, only: [:index, :create, :show, :update, :destroy]
    end
  end
  # resources :statuses, only: :index
  get '/status', to: 'statuses#status'
  root to: 'statuses#status'
end
