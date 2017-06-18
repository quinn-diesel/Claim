Rails.application.routes.draw do

  root to: "users#new"

  resources :users

  get 'users/create'

  get 'users/destroy'

  get 'users/edit'

  get 'users/new'

  get 'users/show'

  get 'users/index'

  get 'users/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
