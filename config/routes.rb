Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :client, only: [:index, :show, :create]
      resources :company, only: [:index, :show, :create]
      resources :currency, only: [:index, :show, :create]
      resources :document_type, only: [:index, :show, :create]
      resources :document, only: [:index, :show, :create]
      resources :financial_institution, only: [:index, :show, :create]
      resources :log, only: [:index, :show, :create]
      resources :transaction, only: [:index, :show, :create]
      resources :user, only: [:index, :show, :create]
    end
  end
end
