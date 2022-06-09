Rails.application.routes.draw do
  resources :treasures
  resources :player_cards
  resources :player_hands
  resources :player_bets
  resources :rounds
  resources :player_sessions
  resources :sessions
  resources :players
  resources :cards
  get '/cards',to:'cards/#index'
  get '/players',to:'players/#index'
  get '/players/:id', to:'players/#show'
  get '/sessions', to:'sessions/#index'
  get '/sessions/:id',to:'sessions/#show'
  get '/rounds',to:'rounds/#index'
  get '/rounds/:id',to:'rounds/#show'
  post '/cards',to:'cards/#create'
  post '/players',to:'players/#create'
  post '/sessions',to:'sessions/#create'
  post '/player_sessions', to:'player_sessions/#create'
  post '/rounds', to:'rounds/#create'
  post '/treasures', to:'treasures/#create'
  delete '/cards/:id',to:'cards/#destroy'
end
