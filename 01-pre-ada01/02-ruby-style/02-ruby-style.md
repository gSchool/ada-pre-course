# Ruby Style

The style in your code is just as important as the code itself. Programmers use code standards along with company style guides to ensure that all programmers are using the same style. Code with good style is easy to read, understand, and modify.

## Concepts

### File naming

Use `snake_case` for naming files and directories.

### Whitespace

*  Code should be separated into thoughts, similar to how you might use paragraphs when writing an essay; every thought should be separated with a blank line
*  There should be a single space on either side of most operators (e.g, `x = x * 2` instead of `x=x*2`)
*  There should be a single space after all commas and colons
*  Use spaces around { and }
*  All code between a do and an end (i.e., inside of a block) should be indented
*  All code inside a if, elsif, or else should be indented

###  Variable names

*  Variable names should clearly describe what they hold
*  Use `snake_case` for variable names (e.g, `user_full_name` instead of `userfullname` or `userfullName`)

### Comments

*  Use comments to describe your code
*  Comments should describe what the code does and not how the code does it (i.e., do not include implementation details in your comments)
*  Use one space between the `#` and the text of the comment

### Big Numbers

*  Use underscores to make big numbers easy to read, (e.g., use `num = 3_000_000` instead of `num = 3000000`)
  
### Calling Methods

*  If the method accepts an argument, always use parens, (e.g., use `push("apple")` instead of `push "apple"`)
*  **Exception:** `puts "hello"` is good style, whereas `puts("hello")` is bad style; this is because we treat `puts` as a keyword even though it's technically a method
*  If a method does not accept arguments, do not use parens, (e.g, use `chomp` instead of `chomp()`)

### Strings

*  Use string interpolation and string formatting instead of string concatenation (e.g., use `"{$num_apples} apples"` instead of `num_apples + " apples"`)

### Examples

1.  Consider indentation, variable names, and comments
  ```ruby
    # poor style
    # prints the numbers 1 to 10 using a loop
    (1..10).each do |i|
    puts i
    end
  ```

  ```ruby
  # good style
  # prints the numbers 1 to 10
  (1..10).each do |num|
    puts num
  end
  ```

1.  Consider white space, indentation, variable names, and comments
  ```ruby
    # poor style
    x=gets.chomp
    if x=="Fish"
    puts "Wonderful in the Water!"
    elsif x=="Camel"
    puts "Destination Desert!"
    else
    puts "Worldwide Wonder!"
    end
  ```

  ```ruby
    # good style
    # read in the type of animal from the user
    puts "Enter an animal: "
    animal = gets.chomp

    # output a message based on the animal type
    if animal == "Fish"
      puts "Wonderful in the Water!"
    elsif animal == "Camel"
      puts "Destination Desert!"
    else
      puts "Worldwide Wonder!"
    end
  ```

1.  Consider white space, indentation, variable names, and comments

  ```ruby
    # poor style
    total=0
    (1..10).each do |i|
    total=total+i
    end
    if total >10
    puts "More than ten"
    else
    puts "Less than ten"
    end
  ```

  ```ruby
    # good style
    # sums the values from 1 to 10
    total = 0
    (1..10).each do |num|
      total += num
    end

    # prints a message based on the sum
    if total > 10
      puts "More than ten"
    else
      puts "Less than ten"
    end
  ```

1.  Consider white space, indentation, variable names, and comments

  ```ruby
    # poor style
    username = gets.chomp
    password = gets.chomp
    if username =="foo"
    if password== "bar"
    puts "Welcome, administrator!"
    else
    puts "Incorrect password."
    end
    else
    puts "Incorrect username."
    end
  ```

  ```ruby
    # good style
    # prints a welcome message if correct username and password, otherwise prints error message
    username = gets.chomp
    password = gets.chomp
    if username == "foo"
      if password == "bar"
        puts "Welcome, administrator!"
      else
        puts "Incorrect password."
      end
    else
      puts "Incorrect username."
    end
  ```

## Check for Understanding

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 2620a069-3f3b-486e-a669-fee596e993e1
* title: Code Style Question 1
* points: 1
* topics: ruby-style

##### !question

What is wrong with this code:

```ruby
currentAge = 22

if currentAge >= 18
  puts "You are allowed to vote."
  puts "Consider carefully"
else 
  puts "You are yet too young to vote."
end
```

##### !end-question

##### !options

* There is too much blank space
* The `if` statement should have parentheses ( ) around the condition.
* The variable should be named `current_age`.
* The variable should be named `CurrentAge`
* The indentation is wrong

##### !end-options

##### !answer

* The variable should be named `current_age`.

##### !end-answer

##### !explanation

With Ruby we use `snake_case` in the style guide.

##### !end-explanation
<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 126f39ed-7662-4d27-8043-501502d14f03
* title: Code Style Question 2
* points: 1
* topics: ruby-style

##### !question

What is wrong with this code:

```ruby
puts "How much money are you willing to spend?"
money = gets.chomp.to_i

if money < 50
puts "You can buy a soda."
elsif money < 75
puts "You can buy a candy bar."
elsif money < 100
puts "You can buy a good chocolate bar!"
else
puts "You can afford anything."
```

##### !end-question

##### !options

* There is not enough blank lines
* The `if` statement should have parentheses ( ) around the condition.
* The variable should be named `current_age`.
* The variable should be named `CurrentAge`
* The indentation is wrong

##### !end-options

##### !answer

* The indentation is wrong

##### !end-answer

##### !explanation

With if statements code should be indented 2 spaces.

##### !end-explanation
<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 3acc40e4-5d32-40e0-9e7d-701de8692d7a
* title: Code Style Question 3
* points: 1
* topics: ruby-style

##### !question

What is wrong with this code:

```ruby
total = 0
5.times do |i|
  puts "Please enter score # #{i + 1}"
  num = gets.chomp.to_i
  total += num
end
average = total.to_f / 5
puts "The average is #{average}"
```

##### !end-question

##### !options

* There is not enough blank lines
* The `if` statement should have parentheses ( ) around the condition.
* The variable should be named `current_age`.
* The variable should be named `CurrentAge`
* The indentation is wrong

##### !end-options

##### !answer

* There is not enough blank lines

##### !end-answer

##### !explanation

While there's nothing **really** wrong with the code presented, the code is very dense, and could be broken up with some newlines to be more readable.  

```ruby
total = 0

5.times do |i|
  puts "Please enter score # #{i}"
  num = gets.chomp.to_i
  total += num
end

average = total.to_f / 5
puts "The average is #{average}"
```

##### !end-explanation

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

## Resources

* [Ada Ruby Style Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=271e9de5-57df-4248-a656-aa5a015efbda)
* [Crowd-sourced Ruby style guide](https://github.com/bbatsov/ruby-style-guide)
