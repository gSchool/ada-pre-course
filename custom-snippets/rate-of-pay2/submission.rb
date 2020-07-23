puts "What is your hourly rate?"
rate_of_pay = gets.chomp.to_f

puts "How many hours did you work?"
hours_worked = gets.chomp.to_f

overtime = rate_of_pay * 1.5

if hours_worked > 60
  puts "Please see manager"
elsif hours_worked <= 40
    amount_earned = hours_worked * rate_of_pay
else
    amount_earned = 40 * rate_of_pay + (hours_worked - 40) * overtime
puts "You earned $%.2f" % amount_earned
end

