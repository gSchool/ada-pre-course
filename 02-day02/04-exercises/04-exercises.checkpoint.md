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

Prompt for a number. If the number is greater than 70, print PASSING, otherwise, print NOT PASSING.

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

Third Example Run

```
Please enter a number ==> 70
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
* id: 65a3a53b-bc7b-423f-af4b-41f67f075553
* title: Even or odd
* docker_directory_path: /custom-snippets/divisible-by-five
* points: 1
* topics: ruby conditionals

##### !question

Prompt for a number. If the number is evenly divisible by 5, print MULTIPLE OF 5, otherwise, print NOT A MULTIPLE OF 5.

Example Run:

```
Enter a number  ==> 13
NOT A MULTIPLE OF 5
```

Second Example Run

```
Enter a number  ==> 14
NOT A MULTIPLE OF 5
```

Third Example Run

```
Enter a number  ==> -20
MULTIPLE OF 5
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

if number % 5 == 0
  puts "MULTIPLE OF 5"
else
  puts "NOT A MULTIPLE OF 5"
end
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->



### 5. Jersey Number

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge
* type: custom-snippet
* language: text
* id: 675f80cd-5023-4d08-b326-0fadcdcd8dec
* title: Jersey Number
* docker_directory_path: /custom-snippets/jersey-number
* points: 1
* topics: ruby conditionals

##### !question

Prompt for a jersey number. If that number is 12, 71, or 80, print That number is retired from the Seattle Seahawks!, otherwise do nothing.

Example Run:

```
Enter a number  ==> 11
```

Second Example Run

```
Enter a number  ==> 12
That number is retired from the Seattle Seahawks!
```

Third Example Run

```
Enter a number  ==> 80
That number is retired from the Seattle Seahawks!
```


##### !end-question

##### !placeholder

##### !end-placeholder

<!-- other optional sections -->
##### !hint 

You will need an `if` with some `||` to check several possibilities

##### !end-hint

##### !explanation 

A good solution would be:

```ruby
print "Enter a number  ==> "
number = gets.chomp.to_i

if number == 12 || number == 80 || number == 71
  puts "That number is retired from the Seattle Seahawks!"
end
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

### 6. The Pacific Northwest

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge
* type: custom-snippet
* language: text
* id: b23321bd-3347-4d74-9b61-e71b8b98b608
* title: The Pacific Northwest
* docker_directory_path: /custom-snippets/pacific-nw
* points: 1
* topics: ruby conditionals

##### !question

Prompt for a state. If the state is Washington, Oregon, or Idaho, print `This state is in the PNW`, otherwise print `You should move to the PNW.  It’s great here!`

Example Run:

```
Enter a State  ==> Texas
You should move to the PNW.  It’s great here!
```

Second Example Run

```
Enter a State  ==> Washington
This state is in the PNW
```

Third Example Run

```
Enter a State  ==> Idaho
This state is in the PNW
```


##### !end-question

##### !placeholder

```ruby
print "Enter a State  ==> "
state = gets.chomp
```

##### !end-placeholder

<!-- other optional sections -->
##### !hint 

You will need an `if` with some `||` to check several possibilities

##### !end-hint

##### !explanation 

A good solution would be:

```ruby
print "Enter a State  ==> "
state = gets.chomp

if state == "Washington" || state == "Idaho" || state == "Oregon"
  puts "This state is in the PNW"
else
  puts "You should move to the PNW.  It’s great here!"
end
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


### 7. Coffee Sizes

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge
* type: custom-snippet
* language: text
* id: 3a794c62-0e9a-4865-a72c-d3d1890bbd41
* title: Coffee Sizes
* docker_directory_path: /custom-snippets/coffee-sizes
* points: 1
* topics: ruby conditionals

##### !question

Prompt for a one of the following: SHORT, TALL, GRANDE, VENTI. Print out the number of ounces that drink includes (8, 12, 16, 20 respectively).

Example Run:

```
Please enter a drink size (SHORT, TALL, GRANDE or VENTI)  ==> VENTI
20 ounces
```

Second Example Run

```
Please enter a drink size (SHORT, TALL, GRANDE or VENTI)  ==> Short
8 ounces
```

Third Example Run

```
Please enter a drink size (SHORT, TALL, GRANDE or VENTI)  ==> GRANDE
16 ounces
```

Fourth Example Run

```
Please enter a drink size (SHORT, TALL, GRANDE or VENTI)  ==> Big
```

##### !end-question

##### !placeholder

```ruby
print "Please enter a drink size (SHORT, TALL, GRANDE or VENTI)  ==> "
size = gets.chomp.upcase
```

##### !end-placeholder

<!-- other optional sections -->
##### !hint 

You will need an `if` with some `elsif` blocks.

##### !end-hint

##### !explanation 

A good solution would be:

```ruby
print "Please enter a drink size (SHORT, TALL, GRANDE or VENTI)  ==> "
size = gets.chomp.upcase

if size == "SHORT"
  puts "8 ounces"
elif size == "TALL"
  puts "12 ounces"
elif size == "GRANDE"
  puts "16 ounces"
elif size == "VENTI"
  puts "20 ounces"
end
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

### 8. Rate of Pay #1

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge
* type: custom-snippet
* language: text
* id: d0c253ed-91e7-4e09-948e-228b33944ca5
* title: Rate of Pay Part 1
* docker_directory_path: /custom-snippets/rate-of-pay
* points: 1
* topics: ruby conditionals

##### !question

Prompt for rate of pay and hours worked. Calculate gross pay. Provide time-and-a-half for hours worked beyond 40 (e.g., if you get paid $10/hr and work 45 hours in a week, you would gross $475 (40 x 10 + 5 x 15).


Example Run:

```
What is your rate of pay  ==> 21
How many hours did you work ==> 10
You earned $210.00
```

Second Example Run

```
What is your rate of pay  ==> 21
How many hours did you work ==> 50
You earned $1155.00
```

Third Example Run

```
What is your rate of pay  ==> 10
How many hours did you work ==> 50
You earned $550.00
```

Fourth Example Run

```
What is your rate of pay  ==> 0
How many hours did you work ==> 50
You earned $0.00
```

##### !end-question

##### !placeholder

##### !end-placeholder

<!-- other optional sections -->
##### !hint 

The formula is hours * rate_of_pay + 0.5 * overtime * rate_of_pay

##### !end-hint

##### !explanation 

A good solution would be:

```ruby
print "What is your rate of pay  ==> "
pay = gets.chomp.to_f

print "How many hours did you work ==> "
hours = gets.chomp.to_f
overtime = 0

if hours > 40
  overtime = hours - 40
  hours -= overtime
end

if overtime > 0
  earnings = hours * pay + overtime * 1.5 * pay
else
  earnings = hours * pay
end

printf("You earned $%.2f\n", earnings) 
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


### 9. Rate of Pay #2

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge
* type: custom-snippet
* language: text
* id: cc468501-3309-419d-a689-1f5b4f5421c1
* title: Rate of Pay Part 2
* docker_directory_path: /custom-snippets/rate-of-pay2
* points: 1
* topics: ruby conditionals

##### !question

Rewrite the solution to the previous problem adding this modification: do not process any employee if their hours worked is greater than 60, instead display the message Please see manager.


Example Run:

```
What is your rate of pay  ==> 21
How many hours did you work ==> 10
You earned $210.00
```

Second Example Run

```
What is your rate of pay  ==> 21
How many hours did you work ==> 60
You earned $1470.00
```

Third Example Run

```
What is your rate of pay  ==> 10
How many hours did you work ==> 61
Please see manager
```

Fourth Example Run

```
What is your rate of pay  ==> 0
How many hours did you work ==> 50
You earned $0.00
```

##### !end-question

##### !placeholder

##### !end-placeholder

<!-- other optional sections -->
##### !hint 

The formula is hours * rate_of_pay + 0.5 * overtime * rate_of_pay

##### !end-hint

##### !explanation 

A good solution would be:

```ruby
print "What is your rate of pay  ==> "
pay = gets.chomp.to_f

print "How many hours did you work ==> "
hours = gets.chomp.to_f
overtime = 0

if hours > 40
  overtime = hours - 40
  hours -= overtime
end

if overtime > 0
  earnings = hours * pay + overtime * 1.5 * pay
else
  earnings = hours * pay
end

printf("You earned \$%.2f", earnings) 
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->
