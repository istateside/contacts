RouteDemo::Application.routes.draw do
  resources :users, only: [:index, :create, :show, :update, :destroy], :has_many => :comments do
    resources :contacts, only: [:index]
  end
  resources :contacts, only: [:create, :show, :update, :destroy], :has_many => :comments
  resources :contact_shares, only: [:index, :create, :show, :update, :destroy], :has_many => :comments


end
