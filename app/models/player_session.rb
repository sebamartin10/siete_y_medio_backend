class PlayerSession < ApplicationRecord
  belongs_to :player
  belongs_to :session
end
