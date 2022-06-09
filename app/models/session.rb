class Session < ApplicationRecord
    has_many :player_sessions
    has_many :players, through: :player_sessions
    has_many :rounds
end
