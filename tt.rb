
# just create a blank grid, for show, to get something going.
def cheaterGrid
  puts ". . . . . . . . . . .\n"*11
  puts "---------------------\n"
end

def printGridGeneric
  y = 0
  while y <= 11
    x = 0
    while x <= 11
      print '. '
      x += 1
    end
    puts ''
    y += 1
  end
end

printGridGeneric

def loadGrid
  y = 0
  while y <= 11
    x = 0
    while x <= 11
      print '. '
      x += 1
    end
    puts ''
    y += 1
  end
end

def printGrid
  y = 0
  while y <= 11
    x = 0
    while x <= 11
      print '. '
      x += 1
    end
    puts ''
    y += 1
  end
end




#   currentPlace = 5,5
# create a 2-D array.
rows, cols = 11,11
grid = Array.new(rows) { Array.new(cols) }

# loadGrid
# printGrid

grid[0][0] = 'a '
grid[0][2] = 'c '

puts grid[0][0]
puts grid[0][1]
puts grid[0][2]


# this works
row = Array.new
row << "."
row << "."
puts row[0] + ' ' + row[1]
puts row[1] + ' '

