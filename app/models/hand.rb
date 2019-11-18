class Hand < ApplicationRecord
  has_many :card_tables, dependent: :destroy
  has_many :table_cards, through: :card_tables, :source => :card, dependent: :destroy
  #accepts empty vals because there are always 5 cards, seen or unseen
  accepts_nested_attributes_for :table_cards

end
