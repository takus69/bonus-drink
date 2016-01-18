class BonusDrink
  def self.total_count_for(amount)
    need_drink = 3
    bonus = 0
    total = amount
    while true do
      bonus += (total - (bonus * need_drink)) / 3
      break if total == amount + bonus
      total = amount + bonus
    end
    return total
  end
end

puts BonusDrink.total_count_for(100)

