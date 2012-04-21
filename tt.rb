
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

def stompOnCurrentSpot
  $grid[$currentX][$currentY] = $cellStompedUpon
end

def moveEast(num = 1)
  num.times do 
    if ($currentX <= $gridSize)
      $currentX += 1
    end
  stompOnCurrentSpot
  end
end

def walkTurtle(cardinalDirection = 0, dist = 1)
  
end

def setCurrentSpot(x, y)
  $grid[x][y] = $cellStompedUpon
end

def loadTheInput
  inFile = Array.new
  STDIN.each_line do |line|
   inFile << line
  end

  if inFile.count < 3
    failOut("There seems to be a problem with the input; (the file seems too short).")
  end

  return inFile
end

def resetGridSize(instructionSet)
  if instructionSet[0].to_i.kind_of? Integer
    firstInstruction = instructionSet[0].to_i
  else failOut('The first line in the input should be an integer')
  end

  if firstInstruction % 2 == 1
    $gridSize = firstInstruction
  else failOut("The first instruction doesn't look like an odd number.  This is a problem.")
  end

  $currentX = $gridSize / 2
  $currentY = $gridSize / 2

    #DEBUG
    #puts $currentX
    #puts $currentY
end

def prepareInstructionSet(instructionSet)
  #remove first two lines
  # TODO: validate the rest of the file
end

def createMovementMatrix
  mtx = Array.new
  mtx << [0, [0, -1]]
  mtx << [45, [1, -1]]
  mtx << [90, [1, 0]]
  mtx << [135, [1, 1]]
  mtx << [180, [0, 1]]
  mtx << [225, [-1, 1]]
  mtx << [270, [-1, 0]]
  mtx << [315, [-1, -1]]
  mtx << [360, [0, -1]]
  return mtx
end

def failOut(reason)
  puts reason
  exit 1
end


### Definitions ###
# create a 2-D array.
$gridSize = 61  #this is a default
$cellNotStompedUpon = '. '
$cellStompedUpon = 'X '
rows, cols = $gridSize,$gridSize
$grid = Array.new(rows) { Array.new(cols) }
$currentX = $gridSize / 2 #sets a default
$currentY = $gridSize / 2 #sets a default
bearing = '0'
$movementMatrix = createMovementMatrix 

### Main Method ###
instructionSet = loadTheInput
resetGridSize(instructionSet)
prepareInstructionSet(instructionSet)
populateGrid

stompOnCurrentSpot

#printCheaterGrid
#printGridGeneric
#printGridGenericRubyStyle
#printGrid

moveEast(5)
walkTurtle(90, 2)
printGrid


  #DEBUG
  #puts $currentX
  #puts $currentY



### Experimenting with file reading ###
#puts instructionSet


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
