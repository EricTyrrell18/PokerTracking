module HandsHelper
  def create_deck
    ranks = ["2","3","4","5","6","7","8","9","10","J","Q","K","A"]
    suits = ["H", "D", "S", "C"]
    # y + x lets us get cards in suited order
    # which looks much better
    suits.product(ranks).map { |x,y| y + x }
  end

end
