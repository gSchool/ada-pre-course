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