Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 	# root to: 'messages#create'
 	get '/' => redirect('/messages')
 	get "messages" => "messages#new"
	post "messages" => "messages#create"
	get "messages/api" => "messages#return_mssg_as_json"
	post "messages/api" => "messages#mssg_as_json"
	resources :messages
end
