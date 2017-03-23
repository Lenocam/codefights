def addTwoDigits(n)
  array = []
  array = n.to_s.each_char.each_slice(1).map{ |x| x.join.to_i  }

  array.inject(&:+)
end

puts addTwoDigits(11)
