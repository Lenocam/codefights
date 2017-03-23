def seatsInTheater(nCols, nRows, col, row)
  col = col - 1
  my_col_disruption = nCols - col
  my_row_disruption = nRows - row

  my_col_disruption * my_row_disruption
end

puts seatsInTheater(16, 11, 5, 3)
