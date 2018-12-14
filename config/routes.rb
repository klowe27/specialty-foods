Rails.application.routes.draw do
  root 'main#index'
  resources :main, only: [:index]
  resources :products do
    resources :reviews
  end
end
