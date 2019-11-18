class Hand < ApplicationRecord
  has_many :card_tables
  has_many :table_cards, through: :card_tables, :source => :card
  accepts_nested_attributes_for :table_cards
end
