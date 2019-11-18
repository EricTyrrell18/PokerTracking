class CardTable < ApplicationRecord
  belongs_to :hand
  belongs_to :card
end
