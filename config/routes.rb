Rails.application.routes.draw do
  devise_for :admins, controllers: { registrations: "registrations" }
  root 'static_pages#home'
  get '/search', to: 'quotes#search'
  namespace :api do
    namespace :v1 do
      root 'quotes#index'
      resources :quotes, only: [:index, :show, :random]
      get '/random', to: 'quotes#random'
      get '/search', to: 'quotes#search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :quotes
end
