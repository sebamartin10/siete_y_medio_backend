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
  get '/cards/:id',to:'cards/#show'
  get '/players',to:'players/#index'
  get '/players/:id', to:'players/#show'
  get '/sessions', to:'sessions/#index'
  get '/sessions/:id',to:'sessions/#show'
  get '/rounds',to:'rounds/#index'
  get '/rounds/:id',to:'rounds/#show'
  get '/player_sessions/:id',to:'player_sessions/#show'
  get '/player_hands/:id',to:'player_hands/#show'
  get '/treasures/:id',to:'treasures/#show'
  post '/cards',to:'cards/#create'
  post '/players',to:'players/#create'
  post '/sessions',to:'sessions/#create'
  post '/player_sessions', to:'player_sessions/#create'
  post '/rounds', to:'rounds/#create'
  post '/treasures', to:'treasures/#create'
  post '/player_bets', to:'player_bets/#create'
  post '/player_hands',to:'player_hands/#create'
  post '/player_cards',to:'player_cards/#create'
  delete '/cards/:id',to:'cards/#destroy'
  put '/rounds/:id', to: 'rounds#update'
  put '/player_hands/:id', to: 'player_hands#update'
  put '/treasures/:id', to: 'treasures#update'
end
