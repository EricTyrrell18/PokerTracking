class Card < ApplicationRecord
  has_many :card_tables
  has_many :hands
  # Setup the neums for easy acces the the Card png files
  enum rank: {
    Two: "2",
    Three: "3",
    Four: "4",
    Five: "5",
    Six: "6",
    Seven: "7",
    Eight: "8",
    Nine: "9",
    Ten: "10",
    Jack: "J",
    Queen: "Q",
    King: "K",
    Ace: "A"
  }

  enum suit: {
    Hearts: "H",
    Diamonds: "D",
    Spades: "S",
    Clubs: "C"
  }

end
