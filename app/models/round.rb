class Round < ApplicationRecord
  belongs_to :session
  has_many :player_bets
  has_many :player_hands
end
