Rails.application.routes.draw do
  get '/test' => 'api/v1/users#test'
  get '/api/v1/user/:address' => 'api/v1/users#show'
  post '/api/v1/users/:address' => 'api/v1/users#new'
end
