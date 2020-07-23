Border = "************************************************"

puts Border
puts "Hi There! Let's play 'Duck Duck Goose!'"

# Data Collection & converting user input from string to integer
puts "Which player do you want to be the Goose? (must be positive integer)"
goose_number = gets.chomp.to_i
puts Border

#start the counter at 1
counter = 1

#Begin Loop 
until counter == goose_number 
  puts "Player #{counter}: Duck!"
  counter += 1
end

#End of Program
puts "Player #{counter}: Goose!"

