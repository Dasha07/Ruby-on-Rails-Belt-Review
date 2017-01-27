Rails.application.routes.draw do
  get '/events' => 'events#index'

  get '/events/:id' => 'events#show'

  get '/' => 'users#login'

  get '/user/:id' => 'users#edit'

  post '/login_user' => 'users#login_user'

  post '/create_user' => 'users#create'

  post '/create_event' => 'events#create'

  get '/logout' => 'users#logout'

  put '/update/:id' => 'users#update'

end
