def makeArrayConsecutive2(statues)
  statues.sort!
  slength = statues.length
  fstatue = statues[0]
  lstatue = statues.last
  full_range = (fstatue..lstatue).to_a
  alength = full_range.length
  count = 0
  count = alength - slength
end
makeArrayConsecutive2([6, 2, 3, 8]) #3 [2, 3, 6, 8]
makeArrayConsecutive2([0, 3]) #2
makeArrayConsecutive2([5, 4, 6]) #0
makeArrayConsecutive2([6, 3]) #2
makeArrayConsecutive2([1]) #0
