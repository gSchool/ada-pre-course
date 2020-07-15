# Loops

<iframe src="https://adaacademy.hosted.panopto.com/Panopto/Pages/Embed.aspx?id=8e72dc31-0a75-4bd8-9db5-0e8b322cb26d&autoplay=false&offerviewer=true&showtitle=true&showbrand=false&start=0&interactivity=all" style="width: 720px; height: 405px; border: 1px solid #464646;" allowfullscreen allow="autoplay"></iframe>

## Definitions

* **Loop**
  * Repeating a sequence of statements; telling the program to do something a certain number of times, or until a certain condition is met
* **Infinite loop**
  * A loop that runs until you kill the program
* **Sentinel-controlled loop**
  * When the number of loops cannot be determined prior to loop execution (e.g, while, until)
* **Counter-controlled loop**
  * When the number of loops can be determined prior to loop execution (e.g, times)

## Sentinel-controlled Loops

### `while` loop

A `while` loop executes code over and over again, while a condition is true.

In the example below this loop will run while the number input with `gets.chomp` is not equal to `rand_num`.  

```ruby
# code example
rand_num = rand(5)
guess = gets.chomp.to_i
while rand_num != guess do
  guess = gets.chomp.to_i
end
```


### `until` loop


`until` loops are similar to `while` loops except that they execute code over and over again, until the condition is true.  While loops repeat while the condition is true, where until loops repeat as long as the condition is false. 

```ruby
# code syntax
until <boolean expression> do
   code
end
```

```ruby
# code example
rand_num = rand(5)
guess = gets.chomp.to_i
until rand_num == guess do
  guess = gets.chomp.to_i
end
```

It is common to use sentinel controlled loops for input validation. The loop below will run until the user enters a value in the correct range.

```ruby
puts "Please enter a grade (0-100)."
grade = gets.chomp.to_i

until grade >= 0 && grade <= 100 do
	puts "That was an invalid grade.  Please enter a value 0-100."
	grade = gets.chomp.to_i
end

puts "Accepted thank you..."
```

## Counter-controlled Loops

### `times`

Times loops are always used for counter-based loops.  The number of executions can be determined by a constant number `3.times do` or using a varaible `x.times do`.

* when `times` is used without an iteration variable it is a loop, when it is used with an iteration variable it becomes an iterator
* `times` must be associated with a block

```ruby
# times syntax as a loop with no iteration variable
<integer>.times
   code
end
```

```ruby
# code example
# prints out "hello" 5 times
5.times do
	puts "hello"
end
```

## Loop Table

A loop table is a table which tracks what each variable is after each iteration of the loop.  For practice create a loop table for the code below, assuming the inputs noted below

```ruby
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

```
1. inputs: 0, -1, 2
2. inputs: 33, 6, 2, 9, 0, -1
3. inputs: 4.2, 1.1, 9.9, -1.0
```

### Loop Table Example

For the inputs `1. inputs: 0, -1, 2` this would be the truth table.

| Iteration | total | input at loop start | input at loop end | input > -1 |
| --------- | ----- | ------------------- | ----------------- | ---------- |
| 1         | 0     | 0                   | -1                | true       |
| 2         | 0     | -1                  |                   | false      |

Output:  `Result: 0`

Whent he program first runs `total` is 0 and `input` is 0.  The while condition is true, so we start iteration 1.  We add `input` to `total` (0 + 0 = 0) and `total` remains 0.  Then we read `-1` into `input`.  Then the loop restarts and `input > -1` is false and the program stops

For practice create loop tables for the inputs 2 & 3.

## Resources

* [Ada Loops Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=8e72dc31-0a75-4bd8-9db5-0e8b322cb26d) (9:11)
