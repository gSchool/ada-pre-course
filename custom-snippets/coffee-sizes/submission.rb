print "Please enter a drink size (SHORT, TALL, GRANDE or VENTI)  ==> "
size = gets.chomp.upcase

if size == "SHORT"
  puts "8 ounces"
elsif size == "TALL"
  puts "12 ounces"
elsif size == "GRANDE"
  puts "16 ounces"
elsif size == "VENTI"
  puts "20 ounces"
end

