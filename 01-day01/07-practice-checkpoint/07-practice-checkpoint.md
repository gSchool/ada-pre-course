# Check for Understanding

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 64e6233c-daeb-4501-8039-03b91e4366f6
* title: Ruby workflow 1
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: workflow, shell-commands

##### !question

What is the terminal?

##### !end-question

##### !options

* A hard protective layer around your code.
* A command-line interface for interacting with an operating system.
* A type-safe programming language
* A way to create a website

##### !end-options

##### !answer

* A command-line interface for interacting with an operating system.

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
##### !hint

You use a shell when you start the terminal.

##### !end-hint

##### !explanation

In computing, a shell is a user interface for access to an operating system's services.

##### !end-explanation
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 0d8456d1-3e78-4c29-a9de-09d7e6a34ffa
* title: Workflow Question #2
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: workflow, shell-commands

##### !question

What bash/zsh command will print your current directory?

##### !end-question

##### !options

* `pwd`
* `ls`
* `rm -rf`
* `echo`

##### !end-options

##### !answer

* `pwd`

##### !end-answer

<!-- other optional sections -->
##### !hint

pwd = present working directory
ls = list directory contents
rm = remove
echo = print

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

The `pwd` command lists the current directory.

##### !end-explanation 

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: beee067a-b1f5-4bfe-a47d-7f568d4358cd
* title: Ruby Types #1
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: ruby-types

##### !question

What will this print out?

`puts (1..10).class`

##### !end-question

##### !options

* Array
* Hash
* Integer
* Float
* Range

##### !end-options

##### !answer

* Range

##### !end-answer

<!-- other optional sections -->
##### !hint

What data type is `(1..10)`?

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation 

`(1..10)` is a range from 1 to 10 inclusive.  When you call `.class` it returns the data type which is `Range`.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: checkbox
* id: 5e81a4c2-2be7-40c6-8538-0c9eedb93589
* title: Ruby Types
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

What Ruby Types hold numeric data?

##### !end-question

##### !options

* String
* Float
* Integer
* Hash
* Array

##### !end-options

##### !answer

* Float
* Integer

##### !end-answer

<!-- other optional sections -->
##### !hint 

Strings hold text, hashes hold key-value pairs and arrays hold lists of values.

##### !end-hint 
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation 

Integers store whole numbers and Floats store decimal numbers.

##### !end-explanation 

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 19f86f5b-47dd-459b-9fe9-0ff6967dd163
* title: Ruby Keyboard Input
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: ruby-functions

##### !question

Which method accepts a single line of text from the keyboard?

##### !end-question

##### !options

* gets
* chomp
* to_i
* to_f
* to_s
* prompt

##### !end-options

##### !answer

* gets

##### !end-answer

<!-- other optional sections -->
##### !hint 

`to_x` methods, convert data from one type to another, so to_a, attempts to convert a value into an array.

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation 

The method `gets` reads in one line from the keyboard including the enter key or newline `\n`.  We usually use `.chomp` afterwards to remove the newline from the input.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 76aaf60b-5bce-4db5-8310-e02b370f4f94
* title: Ruby Strings
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: ruby-strings

##### !question

What is wrong with the following code fragment?

```ruby
name = "Ada Lovelace"

puts 'Hello #{name}'
```

##### !end-question

##### !options

* The text `#{name}` has no meaning in ruby
* You can only do string concatentation in Ruby
* You cannot do string interpolation with single quotes in Ruby
* Nothing is wrong

##### !end-options

##### !answer

* You cannot do string interpolation with single quotes in Ruby

##### !end-answer

<!-- other optional sections -->
##### !hint

You can do "#{name}" in Ruby.

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

You can only do string interpolation with the double quotes `"`.  With single quotes `'`, you can only do string concatenation and the escape sequence `\\`.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!--BEGIN CHALLENGE-->

### !challenge

* type: checkbox
* id: fb6e925b-4968-45c1-89f2-6a055f0e17db
* title: Ruby workflow 2
* points: 1
* topics: ruby-style
<!--Other optional fields (checkpoints only) -->
<!--`points: 1`: the number of points for scoring as a checkpoint-->

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
* Needs to be broken up by blank lines

##### !end-answer

##### !explanation

Notice that the code is really hard to read and it's hard to identify what text is inside the loops.  It would also be more readable with some blank lines between sections of code.

##### !end-explanation

### !end-challenge

<!--END CHALLENGE-->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 2327dd04-52b5-47c3-951d-1e2a30eeb5d8
* title: Pass by reference
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: ruby-variables

##### !question

What will the following print out?

```ruby
students = ["Mark Dean", "Philip Emeagwali", "Clarence Ellis"]

list = students
list[0] = "Marc Hannah"

puts students.first
```

##### !end-question

##### !options

* Mark Dean
* Philip Emeagwali
* Clarence Ellis
* Marc Hannah

##### !end-options

##### !answer

* Marc Hannah

##### !end-answer

<!-- other optional sections -->
##### !hint

Note that both students and list will both reference the same object in memory.

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Since both variables reference the same object in memory they start off referencing ["Mark Dean", "Philip Emeagwali", "Clarence Ellis"].  Then when list[0] = "Marc Hannah", both lists will refer to the array ["Marc Hannah", "Philip Emeagwali", "Clarence Ellis"].  So students.first will be "Marc Hannah".

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->
