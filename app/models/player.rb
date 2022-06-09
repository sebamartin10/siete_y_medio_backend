class Player < ApplicationRecord
    has_one :treasure, dependent: :destroy
end
