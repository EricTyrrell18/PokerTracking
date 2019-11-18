class Game < ApplicationRecord
  has_many :players
  has_many :hands

  accepts_nested_attributes_for :players

  validates :date_played, presence:true
end
