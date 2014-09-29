RouteDemo::Application.routes.draw do
  resources :users, only: [:index, :create, :show, :update, :destroy]
  resources :contacts, only: [:index, :create, :show, :update, :destroy]
  resources :contact_shares, only: [:index, :create, :show, :update, :destroy]
end
