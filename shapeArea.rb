def shapeArea(n)
  i = n
  n = 0
  until i == 1
    n += 4*(i-1)
    i -= 1
  end
  n = n + 1
  return n
end
shapeArea(1) #1 + 4
shapeArea(2) #5 + 8
shapeArea(3) #13 + 12
shapeArea(4) #25 + 16
shapeArea(5) #41 + 20
shapeArea(6) #61 + 24
shapeArea(7) #85 + 28
