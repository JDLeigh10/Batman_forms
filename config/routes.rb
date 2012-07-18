Picmarks::Application.routes.draw do
  
  get '/pictures', :controller => 'pictures', :action => 'index'
  #post '/pictures', :controller => 'pictures', :action => 'create'
  put '/pictures' => "Pictures#update"
  
  get '/pictures/new' => 'Pictures#new'
  
  get '/pictures/:id' => 'Pictures#show'
  
  get '/pictures/:id/edit' => 'Pictures#edit'
  
  delete "pictures/:id" => "Pictures#destroy"
end
