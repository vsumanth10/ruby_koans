#!/usr/bin/env ruby

class DiceSet
  attr_reader :values

  def roll(size)
    #Populates values with the 'size' number of integers between 1 and 6 both inclusive
    @values = []
    size.times do
      @values << (1+rand(6))
    end    
  end
end


if __FILE__ == $0
	d = DiceSet.new
	d.roll 2
	first_time = d.values
	second_time = d.values

	p d.values.size
	p d.values

	

	
end
