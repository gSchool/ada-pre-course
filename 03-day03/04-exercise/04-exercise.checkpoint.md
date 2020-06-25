# Looping & Scope Exercises

## 1.  Number Guessing Game

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: paragraph
* id: f0b6c384-04d4-4688-ab82-3c2666d2bbab
* title: Number Guessing Game
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

Write a program that allows a user to play a guessing number game. Your program should generate a random number between 0 – 1000 (including 0, but not including 1000). Allow the user to make a guess until they guess the answer. After each guess you should print "higher" or "lower". When they guess it correctly print a winning message along with their total number of guesses.

**This exercise is not autograded**

This exercise is not autograded, your Jumpstart Instructor will provide feedback.  Just paste the code into the textbox below.

##### !end-question

##### !placeholder

```ruby
# your code here
```


##### !end-placeholder

<!-- other optional sections -->
##### !hint

You will need a loop, a while loop would make sense.

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: [text, one of: csharp, html, java, javascript, json, markdown, python, or sql]
* id: ab0e85e5-9e1b-427f-879d-212e4638bd4a
* title: [text, a short question title]
* docker_directory_path: /custom-snippets/duck-duck-goose
* points: [1] (optional, the number of points for scoring as a checkpoint)
* topics: iteration

##### !question

Write a program that plays duck duck goose. Allow the user to enter the player's number they want to call goose on, and then say "duck" for each player before the "goose", then say "goose" for the chosen player.

Example Run:

```ruby
Which player do you want to Goose? 5

Player 1: Duck
Player 2: Duck
Player 3: Duck
Player 4: Duck
Player 5: Goose
```

##### !end-question

##### !placeholder

```
print "Which player do you want to Goose? "
```

##### !end-placeholder

<!-- other optional sections -->
##### !hint

It would make sense to use a .times loop

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

```ruby
print "Which player do you want to Goose? "
number = gets.chomp.to_i

(number - 1).times do |i|
  puts "Player #{i + 1}: Duck"
end

puts "Player #{number}: Goose"
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: 08a403f3-006c-4fe6-a8e6-54aaffa2b6c4
* title: love-me love-me-not
* docker_directory_path: /custom-snippets/love-me
* points: 1
* topics: iteration

##### !question

Write a program that allows a user to enter the number of petals on a flower. Then one by one, print “plucking petal #1: they love me!”. Alternate “They love me” and “They love me not” as well as increase the petal number for each petal.


Example Run:

```ruby
Please enter the number of petals  => 5
they love me!
they love me not
they love me!
they love me not
they love me!
```

##### !end-question

##### !placeholder

```
print "Please enter the number of petals  => "
```

##### !end-placeholder

<!-- other optional sections -->
##### !hint

It would make sense to use a .times loop

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

```ruby
print "Please enter the number of petals  => "
number = gets.chomp.to_i

number.times do |i|
  if i % 2 == 0
    puts "they love me!"
  else
    puts "they love me not"
  end
end
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

* type: paragraph
* id: b3e9832b-3efd-4bde-bb82-24b2dd135298
* title: Duplicate Entry
* points: 1
* topics: iteration

##### !question

You don't trust your users. Modify the program below to require the user to enter the same value twice in order to add that value to the total.

**This is not a auto-graded assessment, your Jumpstart instructor will evaluate it**

**Example Run**

```
Hello! We are going to total some numbers!
Enter a negative number to quit.

3
3
2
2
-1
-1

Result: 5
```

**Example Run Two**

```
Hello! We are going to total some numbers!
Enter a negative number to quit.

3
1
Entries do not match
2
2
-1
-1

Result: 2
```


##### !end-question

##### !placeholder

```
puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."

total = 0
input = gets.chomp.to_i
while input > -1
  total += input
  input = gets.chomp.to_i
end

puts "Result: #{total}"
```

##### !end-placeholder

<!-- other optional sections -->
##### !hint



##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

```ruby
puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."

total = 0
input = gets.chomp.to_i
while input > -1
  puts "Please resubmit to verify"
  input_two = gets.chomp.to_i
  if input == input_two
    total += input
  else
    puts "Entries do not match"
  end

  input = gets.chomp.to_i
end

puts "Result: #{total}"
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->
