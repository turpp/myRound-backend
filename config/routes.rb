Rails.application.routes.draw do
  resources :holes, only: :update
  resources :rounds, except: [:edit, :delete, :index] do
    resources :holes
  end

  get '/rounds/:id/summary', to: 'rounds#summary'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
