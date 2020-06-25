# Looping & Scope Exercises

## 1.  Number Guessing Game

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: 38f60574-5e17-4e0b-b786-51b10a4b5982
* title: Guessing Game
* docker_directory_path:
* points: 1
* topics: looping

##### !question

Write a program that allows a user to play a guessing number game. Your program should generate a random number between 0 – 1000 (including 0, but not including 1000). Allow the user to make a guess until they guess the answer. After each guess you should print "higher" or "lower". When they guess it correctly print a winning message along with their total number of guesses.

**This exercise is not autograded**

This exercise is not autograded, your Jumpstart Instructor will provide feedback.

##### !end-question

##### !placeholder

```
Your code goes here
```

##### !end-placeholder

<!-- other optional sections -->
##### !hint

You can do this with a while loop.

```ruby
number = rand(0...1000)
num_guesses = 1
puts "Guess my number: "
guess = gets.chomp.to_i

while number != guess
  if number < guess
    puts "LOWER"
  else
    puts "HIGHER"
  end

  num_guesses += 1
  guess = gets.chomp_to_i
end

puts "YOU GOT IT IN #{num_guesses} GUESSES!"
```

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation 

You can do this with a while loop.

```ruby
number = rand(0...1000)
num_guesses = 1
puts "Guess my number: "
guess = gets.chomp.to_i

while number != guess
  if number < guess
    puts "LOWER"
  else
    puts "HIGHER"
  end

  num_guesses += 1
  guess = gets.chomp_to_i
end

puts "YOU GOT IT IN #{num_guesses} GUESSES!"
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->