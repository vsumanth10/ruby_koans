#!/usr/bin/env ruby

def score(dice)
  # You need to write this method
  
  h = Hash.new(0)
  dice.each do |d|
    h[d] += 1
  end
  
  total = 0
  h.each { |k,v| 
    if v >= 3
      if k == 1
        total += 1000
      else
        total += (k*100)
      end
      v -= 3
    end

    v.times do 
      total += case k
        when 1
          100
        when 5 
          50
        else
          0
        end
      end
  } #end each
  total

end # end method

if __FILE__ == $0
	a = ARGV.collect {|m| m.to_i }
	p score a
end