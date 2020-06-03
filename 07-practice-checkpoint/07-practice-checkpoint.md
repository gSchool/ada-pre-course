# Check for Understanding

<!--BEGIN CHALLENGE-->

### !challenge

* type: checkbox
* id: fb6e925b-4968-45c1-89f2-6a055f0e17db
* title: How did it go?
* points: 1
* topics: ruby-style
<!--Other optional fields (checkpoints only) -->
<!--`points: 1`: the number of points for scoring as a checkpoint-->
<!--`topics: python, pandas`: the topics for analyzing points-->

##### !question

1. What is wrong with this code?

```ruby
puts "How many hours did you work this week?"
hours = gets.chomp.to_i
while hours < 0
puts "Please enter a positive number of hours"
hours = gets.chomp.to_i
end
puts "How much do you make per hour?"
rate = gets.chomp.to_f
while rate < 0
puts "Please enter a positive number?"
rate = gets.chomp.to_f
end
puts "You made $#{rate * hours} per hour."
```

##### !end-question

##### !options

* No indentation
* Variables not camelCase
* Variables not snake_case
* Needs to be broken up by blank lines

##### !end-options

##### !answer

* No indentation
* Variables not camelCase
* Variables not snake_case
* Needs to be broken up by blank lines

##### !end-answer

### !end-challenge

<!--END CHALLENGE-->
