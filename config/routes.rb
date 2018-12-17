Rails.application.routes.draw do
	get '/' => 'pages#index'
	get '/contact' => 'pages#contact'

	get '/menus/new' => 'menus#new'
	get '/menus' => 'menus#show'
	post '/menus' => 'menus#create'

	get '/events/new' => 'events#new'
	get '/events' => 'events#index'
	post '/events' => 'events#create'
	get '/events/:id' => 'events#show'


	get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
