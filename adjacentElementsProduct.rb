def adjacentElementsProduct(inputArray)
  g = inputArray.length - 2
  i = 0
  newArray = []

  while g > ( i - 1)
    newArray << inputArray[0 + i] * inputArray[1 + i]
    i += 1

  end
    newArray.sort!
    return newArray.last
end
adjacentElementsProduct([3, 6, -2, -5, 7, 3])
adjacentElementsProduct([-1, -2])
adjacentElementsProduct([5, 1, 2, 3, 1, 4])
