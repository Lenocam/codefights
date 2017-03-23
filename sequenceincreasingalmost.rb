def almostIncreasingSequence(sequence)
  array_of_arrays = sequence.chunk_while {|i, j| i < j}.to_a
  if array_of_arrays.length > 2
    puts false
  else
    if (array_of_arrays[0].last <=> array_of_arrays[1].first) == 1
      if (array_of_arrays[0][-2] <=> array_of_arrays[1][0]) == -1
        puts true
      elsif (array_of_arrays[0].last <=> array_of_arrays[1][1]) == -1
        puts true
      elsif (array_of_arrays[0][-2]) == nil
        puts true
      else
        puts false
      end
    else
      puts true
    end
    #puts true
    #puts "#{array_of_arrays}"
  end
end
puts "Can be done removing one number"
(almostIncreasingSequence([1, 2, 3, 4, 99, 5, 6]) )#true     -1, -1, -1, -1,  1, -1
(almostIncreasingSequence([1, 3, 2])) #true                  -1,  1
(almostIncreasingSequence([10, 1, 2, 3, 4, 5])) #true         1, -1, -1, -1, -1
(almostIncreasingSequence([0, -2, 5, 6]) )#true               1, -1, -1
(almostIncreasingSequence([1, 2, 3, 4, 3, 6])) #true         -1, -1, -1,  1, -1 if for is less than 6
(almostIncreasingSequence([1, 1])) #true even 0
(almostIncreasingSequence([100, 200, 300, 400, 99, 500, 600])) #true
puts "<"
puts "<"
puts "Not Able to be done"

puts "Two Arrays"
(almostIncreasingSequence([1, 2, 1, 2])) #false              -1,  1, -1
(almostIncreasingSequence([1, 2, 3, 4, 5, 3, 5, 6])) #false  -1, -1, -1, -1,  1, -1, -1
(almostIncreasingSequence([40, 50, 60, 10, 20, 30])) #false  -1, -1,  1, -1, -1
puts "<"
puts "<"
puts "Three Arrays"
(almostIncreasingSequence([1, 3, 2, 1])) #false
(almostIncreasingSequence([1, 4, 10, 4, 2])) #false even -1, -1, 1, 1
(almostIncreasingSequence( [1, 1, 1, 2, 3])) #false negative 0, 0, -1, -1
(almostIncreasingSequence([10, 1, 2, 3, 4, 5, 6, 1])) #false negative 1, -1, -1, -1, -1, -1, 1
