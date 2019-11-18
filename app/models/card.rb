class Card < ApplicationRecord
  has_many :card_tables
  has_many :hands
  # Setup the neums for easy acces the the Card png files
  enum rank: {
    "2": "2",
    "3": "3",
    "4": "4",
    "5": "5",
    "6": "6",
    "7": "7",
    "8": "8",
    "9": "9",
    "10": "10",
    "J": "J",
    "Q": "Q",
    "K": "K",
    "A": "A"
  }

  enum suit: {
    "H": "H",
    "D": "D",
    "S": "S",
    "C": "C"
  }

end
