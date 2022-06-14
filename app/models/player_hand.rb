class PlayerHand < ApplicationRecord
  belongs_to :player
  belongs_to :round
  has_many :player_cards
 
end
