def almostIncreasingSequence(sequence)
  prev = [sequence[0], sequence[1]].min
  puts "#{prev}"
  wrong = 0
  (sequence.length - 1).times do |num|
    if prev < sequence[num + 1]
      prev = sequence[num + 1]
    else
      wrong += 1
      return false if wrong == 2
      puts "#{prev}"
      prev = sequence[num - 1]
    end
  end
  puts "#{prev}"
  true
end


#puts (almostIncreasingSequence([1, 3, 2])) #true                  -1,  1
#puts (almostIncreasingSequence([1, 2, 1, 2])) #false              -1,  1, -1
puts (almostIncreasingSequence([10, 1, 2, 3, 4, 5])) #true         1, -1, -1, -1, -1
#puts (almostIncreasingSequence([0, -2, 5, 6]) )#true               1, -1, -1
#puts (almostIncreasingSequence([1, 2, 3, 4, 5, 3, 5, 6])) #false  -1, -1, -1, -1,  1, -1, -1
puts (almostIncreasingSequence([40, 50, 60, 10, 20, 30])) #false  -1, -1,  1, -1, -1
#puts (almostIncreasingSequence([1, 2, 3, 4, 3, 6])) #true         -1, -1, -1,  1, -1
puts "<<<<<<<>>>>>>>"
puts (almostIncreasingSequence([1, 2, 3, 4, 99, 5, 6]) )#true -1, -1, -1, -1,  1, -1
puts "&&&&&&&&&&&&&&"
#puts (almostIncreasingSequence([100, 200, 300, 400, 99, 500, 600])) #true
#puts (almostIncreasingSequence([1, 3, 2, 1])) #false positive -1, 1, 1
#puts (almostIncreasingSequence([1, 4, 10, 4, 2])) #false even -1, -1, 1, 1
#puts (almostIncreasingSequence( [1, 1, 1, 2, 3])) #false negative 0, 0, -1, -1
#puts (almostIncreasingSequence([1, 1])) #true even 0
#puts (almostIncreasingSequence([10, 1, 2, 3, 4, 5, 6, 1])) #false negative 1, -1, -1, -1, -1, -1, 1
