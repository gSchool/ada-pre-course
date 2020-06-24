# Day 2 Exercises

#### !instructor

This is an example of an interactive Challenge using Ruby.

View this content in Learn to see the interactive Challenge rendered. Instructions at https://github.com/gSchool/learn-content/blob/master/README.md

#### !end-instructor

## Ruby Conditional & Loop Practice

### 1. Passing or Not

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge
* type: custom-snippet
* language: text
* id: 885d56b8-e509-40a8-9e59-76213eb5d4fa
* title: passing or not passing
* docker_directory_path: /custom-snippets/passing-not-passing
* points: 1
* topics: ruby conditionals

##### !question

Prompt for a number. If the number is greater than 70, print PASSING; otherwise, print NOT PASSING.

Example Run:

```
Please enter a number ==> 80
PASSING
```

Second Example Run

```
Please enter a number ==> 60
NOT PASSING
```

##### !end-question

##### !placeholder

##### !end-placeholder

<!-- other optional sections -->
##### !hint 

Remember that 70 is not greater than 70.

##### !end-hint

##### !explanation 

A good solution would be:

```ruby
print "Please enter a number ==> "
number = gets.chomp.to_i

if number > 70
  puts "PASSING"
else
  puts "NOT PASSING"
end
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

### 2. Green-go

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge
* type: custom-snippet
* language: text
* id: 3b29e828-b904-46c8-afbc-19880da5731a
* title: Green Go, other Stop
* docker_directory_path: /custom-snippets/green-go
* points: 1
* topics: ruby conditionals

##### !question

Prompt for a string. If the string is equal to green, print GO, otherwise, print STOP.

Example Run:

```
Enter a string  ==> green
GO
```

Second Example Run

```
Enter a string  ==> Green
STOP
```

Third Example Run

```
Enter a string  ==> red
STOP
```


##### !end-question

##### !placeholder

##### !end-placeholder

<!-- other optional sections -->
##### !hint 

Remember capitalization!

##### !end-hint

##### !explanation 

A good solution would be:

```ruby
print "Please enter a number ==> "
text = gets.chomp

if text == "green"
  puts "GO"
else
  puts "STOP"
end
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->



### 3. Even or Odd

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge
* type: custom-snippet
* language: text
* id: 2a2db845-b534-48de-b26b-60e1ae3c6080
* title: Even or odd
* docker_directory_path: /custom-snippets/even-odd
* points: 1
* topics: ruby conditionals

##### !question

Prompt for a number. If the number is even, print EVEN, otherwise, print ODD.

Example Run:

```
Enter a number  ==> 13
ODD
```

Second Example Run

```
Enter a number  ==> 14
EVEN
```

Third Example Run

```
Enter a number  ==> -20
EVEN
```


##### !end-question

##### !placeholder

##### !end-placeholder

<!-- other optional sections -->
##### !hint 

Remember the modulus operator?

##### !end-hint

##### !explanation 

A good solution would be:

```ruby
print "Enter a number  ==> "
number = gets.chomp.to_i

if number % 2 == 0
  puts "EVEN"
else
  puts "ODD"
end
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


### 4. Divisible By 5

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge
* type: custom-snippet
* language: text
* id: 2a2db845-b534-48de-b26b-60e1ae3c6080
* title: Even or odd
* docker_directory_path: /custom-snippets/divisible-by-five
* points: 1
* topics: ruby conditionals

##### !question

Prompt for a number. If the number is even, print EVEN, otherwise, print ODD.

Example Run:

```
Enter a number  ==> 13
ODD
```

Second Example Run

```
Enter a number  ==> 14
EVEN
```

Third Example Run

```
Enter a number  ==> -20
EVEN
```


##### !end-question

##### !placeholder

##### !end-placeholder

<!-- other optional sections -->
##### !hint 

Remember the modulus operator?

##### !end-hint

##### !explanation 

A good solution would be:

```ruby
print "Enter a number  ==> "
number = gets.chomp.to_i

if number % 2 == 0
  puts "EVEN"
else
  puts "ODD"
end
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->
