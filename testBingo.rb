require "bingo.rb"

bingo = Bingo.new

while bingo.remain?
  bingo.select_number
  print bingo.current_number
  print "\n"
end
print Bingo::MESSAGE_GAME_IS_OVER

bingo = Bingo.new
35.times{|n| bingo.select_number}


print bingo.used_numbers[4]
print ":"
print bingo.unused? bingo.used_numbers[4]
print "\n"
print bingo.remaining_numbers[4]
print ":"
print bingo.unused? bingo.remaining_numbers[4]
print "\n"

