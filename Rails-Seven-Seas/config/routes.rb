Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/seas' => 'seas#index'
  get '/seas/:id/edit' => 'seas#edit'
  get '/seas/new' => 'seas#new'
  get '/seas/:id' => 'seas#show'
  get '/welcome' => 'seas#welcome'
  post '/seas' => 'seas#index'

end
