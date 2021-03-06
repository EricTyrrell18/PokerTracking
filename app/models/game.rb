class Game < ApplicationRecord
  has_many :players, dependent: :destroy
  has_many :hands, dependent: :destroy

  accepts_nested_attributes_for :players, allow_destroy: true

  validates :date_played, presence:true
end
