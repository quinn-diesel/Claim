Rails.application.routes.draw do

  get 'session/create'

  get 'session/update'

  get 'session/index'

  get 'session/show'

  get 'session/edit'

  get 'session/new'

  get 'session/destroy'

  get 'create/Session'

  get 'create/create'

  get 'create/update'

  get 'create/index'

  get 'create/show'

  get 'create/edit'

  get 'create/new'

  get 'create/destroy'

  root to: "static#show"

  get 'static/create' => 'static#create'

  get 'static/destroy' => 'static#destroy'

  get 'static/edit' => 'static#edit'

  get 'static/update' => 'static#update'

  get 'static/new' => 'static#new'

  get 'static/index' => 'static#index'

  get 'static/show' => 'static#show'


  resources :users

  get '/users/create'=> 'users#create'

  get '/users/destroy' => 'users#destroy'

  get '/users/edit' => 'users#edit'

  get '/users/new' => 'users#new'

  get '/users/show' => 'users#index'

  get '/users/index' => 'users#index'

  get '/users/update' => 'users#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
