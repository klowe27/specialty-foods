Rails.application.routes.draw do
  resources :main
  resources :products do
    resources :reviews
  end
end
