Rails.application.routes.draw do

  root to: "static#show"

  resources :runs
  # Controller#Action
  #        runs GET    /runs(.:format)               runs#index
  #             POST   /runs(.:format)               runs#create
  #     new_run GET    /runs/new(.:format)           runs#new
  #    edit_run GET    /runs/:id/edit(.:format)      runs#edit
  #         run GET    /runs/:id(.:format)           runs#show
  #             PATCH  /runs/:id(.:format)           runs#update
  #             PUT    /runs/:id(.:format)           runs#update
  #             DELETE /runs/:id(.:format)           runs#destroy

  resources :mountains

#   Controller#Action
#    mountains GET    /mountains(.:format)          mountains#index
#              POST   /mountains(.:format)          mountains#create
# new_mountain GET    /mountains/new(.:format)      mountains#new
# edit_mountain GET    /mountains/:id/edit(.:format) mountains#edit
#     mountain GET    /mountains/:id(.:format)      mountains#show
#              PATCH  /mountains/:id(.:format)      mountains#update
#              PUT    /mountains/:id(.:format)      mountains#update
#              DELETE /mountains/:id(.:format)      mountains#destroy

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
