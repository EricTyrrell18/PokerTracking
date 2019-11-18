module HandsHelper
  def create_deck
    ranks = ["2","3","4","5","6","7","8","9","10","J","Q","K","A"]
    suits = ["H", "D", "S", "C"]

    ranks.product(suits).map  { |x,y| x + y }
  end

end
