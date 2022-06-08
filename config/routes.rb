Rails.application.routes.draw do
  resources :player_sessions
  resources :sessions
  resources :players
  resources :cards
  get '/cards',to:'cards/#index'
  get '/players',to:'players/#index'
  get '/sessions', to:'sessions/#index'
  get '/sessions/:id',to:'sessions/#show'
  post '/cards',to:'cards/#create'
  post '/players',to:'players/#create'
  post '/sessions',to:'sessions/#create'
  post '/player_sessions', to:'player_sessions/#create'
  delete '/cards/:id',to:'cards/#destroy'
end
