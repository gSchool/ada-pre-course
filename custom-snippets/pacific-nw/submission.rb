print "Enter a State  ==> "
state = gets.chomp

if state == "Idaho" || state == "Washington" || state == "Oregon"
  puts "This state is in the PNW"
else
  puts "You should move to the PNW; it’s great here!"
end

