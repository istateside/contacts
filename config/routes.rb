RouteDemo::Application.routes.draw do
  resources :users
  resources :contacts
  resources :contact_shares
  # get 'users' => 'users#index', :as => 'users'
  # post 'users' => 'users#create'
  # get 'users/new' => 'users#new', :as => 'new_user'
  # get 'users/:id/edit' => 'users#edit', :as => 'edit_user'
  # get 'users/:id' => 'users#show', :as => 'user'
  # patch 'users/:id' => 'users#update'
  # put 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'
end
