Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, except: [:update, :edit, :destroy] do
    resources :doses, only: [:new, :destroy]
  end
end
