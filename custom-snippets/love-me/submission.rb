print "Please enter the number of petals  => "
number = gets.chomp.to_i

number.times do |i|
  if i % 2 == 0
    puts "they love me!"
  else
    puts "they love me not"
  end
end


