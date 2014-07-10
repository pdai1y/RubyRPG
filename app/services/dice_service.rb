class DiceService
  attr_reader :sides, :count, :increment, :multiplier
 
  def initialize(count, sides, increment=0, multiplier=1)
    @sides, @count = sides, count
    @increment, @multiplier = increment, multiplier
  end
 
  def *(n)
    Dice.new(count, sides, increment, multiplier * n)
  end
 
  def +(n)
    Dice.new(count, sides, increment+n, multiplier)
  end

  def -(n)
    self.+(-n)
  end

  def roll(collect=false)
    result = collect ? [] : 0
 
    count.times do
      roll = (rand(sides) + 1) * multiplier
      result = result.send(collect ? :push : :+, roll)
    end
 
    if increment != 0
      result = result.send(collect ? :push : :+, increment * multiplier)
    end
 
    result
  end
 
  def best(n, collect=false)
    list = to_a.sort.last(n)
    collect ? list : list.inject(0) { |s,v| s + v }
  end
  
  def to_a
    roll(true)
  end
end