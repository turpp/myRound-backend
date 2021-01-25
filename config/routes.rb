Rails.application.routes.draw do
  # resources :holes
  resources :rounds, except: [:edit, :delete, :index] do
    resources :holes
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
