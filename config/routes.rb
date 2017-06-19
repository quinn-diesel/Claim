Rails.application.routes.draw do

  root to: "static#show"

  ###### SESSION Routes ######

  get    '/login' => 'session#new'
  post   '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users

  ##### Summary of what is happening. Found in console with 'rails routes' #####
  #   users GET    /users(.:format)          users#index
  #          POST   /users(.:format)          users#create
  # new_user GET    /users/new(.:format)      users#new
  # edit_user GET    /users/:id/edit(.:format) users#edit
  #     user GET    /users/:id(.:format)      users#show
  #          PATCH  /users/:id(.:format)      users#update
  #          PUT    /users/:id(.:format)      users#update
  #          DELETE /users/:id(.:format)      users#destroy
end
