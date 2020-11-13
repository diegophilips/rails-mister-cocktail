Rails.application.routes.draw do
  get 'doses/new'
  root to: "cocktails#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, except: [:update, :edit, :destroy] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
