Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      root 'quotes#index'
      resources :quotes, only: [:index, :show, :random]
      get '/random', to: 'quotes#random'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :quotes
end
