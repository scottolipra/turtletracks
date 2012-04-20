
# just create a blank grid, for show, to get something going.
def printCheaterGrid
  puts "Cheater Grid"
  puts ( (". " *$gridSize) + "\n") *$gridSize
end

def printGridGeneric
  puts 'Generic C++Style'
  y = 0
  while y <= $gridSize
    x = 0
    while x <= $gridSize
      print '. '
      x += 1
    end
    puts ''
    y += 1
  end
end

def printGridGenericRubyStyle
  puts 'Generic RubyStyle'
  y = 0
  $gridSize.times do |y|
    x = 0
    $gridSize.times do |x|
      print $cellNotStompedUpon
      x += 1
    end
    puts ''
    y += 1
  end
end


def populateGrid
  y = 0
  $gridSize.times do |y|
    x = 0
    $gridSize.times do |x|
      $grid[x][y] = $cellNotStompedUpon
      x += 1
    end
    y += 1
  end
end

def printGrid
  puts 'printGrid'
  y = 0
  $gridSize.times do |y|
    x = 0
    $gridSize.times do |x|
      print $grid[x][y]
      x += 1
    end
    puts ''
    y += 1
  end
end

def stompOnCurrentSpot(x, y)
  $grid[x][y] = $cellStompedUpon
end

def moveNorth(currentX, currentY, num = 1)
  num.times do |num|
    if (currentY <= $gridSize)
      currentY -= 1
    end
  stompOnCurrentSpot(currentX, currentY)
  end
end

def setCurrentSpot(x, y)
  $grid[x][y] = $cellStompedUpon
end

### Definitions ###
# create a 2-D array.
$gridSize = 61
$cellNotStompedUpon = '. '
$cellStompedUpon = 'X '
rows, cols = $gridSize,$gridSize
$grid = Array.new(rows) { Array.new(cols) }
currentX = $gridSize / 2
currentY = $gridSize / 2
bearing = '0'


### Main Method ###
populateGrid

stompOnCurrentSpot(currentX, currentY)

#printCheaterGrid
#printGridGeneric
#printGridGenericRubyStyle
#printGrid

moveNorth(currentX, currentY, 20)
printGrid
#instruction = readInstruction(instructionFile)
#bearing = determineNewBearing(instruction)
#distance = determineDistance(instruction)
#walkTurtle(bearing, distance)




### Experimenting with file reading ###
inFile = Array.new
STDIN.each_line do |line|

end

### Experimenting with Ruby 2-D array writes / reads. ###
=begin
puts ''
puts 'experimenting with 2D array'
gridArray[0][0] = 'a '
gridArray[0][2] = 'c '

puts gridArray[0][0]
puts gridArray[0][1]
puts gridArray[0][2]
=end
