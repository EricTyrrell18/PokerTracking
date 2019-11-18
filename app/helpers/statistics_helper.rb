module StatisticsHelper

  #TODO I'm sure there's a better way
  # there's probably something in active record
  # this much better record which does 
  def life_time_total()
    total = 0
    Game.all.each do |game| 
       total += game.hands.sum(:result)
    end
    total
  end

  def total_hands()
    Hand.count
  end

  def profit_per_hand()
    # Avoid divide by zero
    if Hand.count == 0
      return 0
    end

    life_time_total / Hand.count
  end
end
