print "Which player do you want to be the Goose? "
goose = gets.chomp.to_i

player = 1
until player == goose
  puts "Player #{player}: Duck"
  player += 1
end

puts "Player #{player}: Goose"

