Rails.application.routes.draw do
  resources :cocktails do
    resources :dose, only: [:new, :create]
  end
  resources :dose, only: [:destroy]
end
