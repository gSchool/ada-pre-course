puts "Please enter your a list of true or false"

list = []

5.times do
  input = gets.chomp.upcase
  if input == "TRUE"
    list << true
  else
    list << false
  end
end

all_true = true

list.each do |boolean|
  all_true &&= boolean
end

if all_true
  puts "YES"
else
  puts "NO"
end

