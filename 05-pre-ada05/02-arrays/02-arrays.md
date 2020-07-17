# Arrays

Arrays are ordered collections of data that can be accessed with a 0-based index. Arrays are also part of a family of data structures, data structures organize and store information.

<iframe src="https://adaacademy.hosted.panopto.com/Panopto/Pages/Embed.aspx?id=5fb869d2-db52-4cd2-a1cc-238e0e084fa5&autoplay=false&offerviewer=true&showtitle=true&showbrand=false&start=0&interactivity=all" style="width: 720px; height: 405px; border: 1px solid #464646;" allowfullscreen allow="autoplay"></iframe>

## Why Arrays?

Instead of having to create individual variables, arrays are often used to group data together and make it easy to access.

Consider wanting to store the daily temperature averages for the month of December. You could create 31 variables to store those temperatures but that might be hard to manage, not to mention, a lot of line of codes. Then, if you later decide to store the temperatures for the entire year, it becomes almost impossible to handle.

A perfect solution to this is to use an array. Now you have one name to reference all of the temperatures, and you can easily access the temperature from a specific day.

## Array Indexes

Array indexes start at 0, and increase by 1. You cannot change the indexes of an array. 

```ruby
nums = [34, 78, 45]
```

| Index | Value |
| :---- | :---- |
| 0     | `34`  |
| 1     | `78`  |
| 2     | `45`  |
| 3     | `nil` |

You can also use negative indexes to look at the array from the end

| Index | Value |
| :---- | :---- |
| -1    | `45`  |
| -2    | `78`  |
| -3    | `34`  |
| -4    | `nil` |

## Create

### Using []

```ruby
# creates an empty array named list
list = []

# creates an array named list, storing 1, 2, 3
list = [1, 2, 3]
```

### Array.new

* Can pass parameters to initialize to certain values

```ruby
# creates an empty array named list
list = Array.new

# creates an array of length 3, storing nil in each index
list = Array.new(3)

# creates an array of length 5, storing "Ada" in each index
ada = Array.new(5, "Ada")

# passes a block as a parameter
# creating an array of multiples of 2, named mult2
mult2 = Array.new(5) { |i| i * 2 }
```

## Printing an Array

* If you use `puts` to display an array, it will list each element on its own line
* Instead use `print` or `puts` with string interpolation and the array will display as a comma separated list, which is usually easier to read

```ruby
arr = Array.new(3, 0)
# This will display ..
# 0
# 0
# 0
puts arr

# This will display ...
# [0, 0, 0]
print arr

# This will display ...
# [0, 0, 0]
puts "#{arr}"
```

## Change and Access

Array elements can be accessed with their indexes

```ruby
list =  [0, 1, 2]
list[0] = 7
list[1] = -1
list[2] = 33
# list is now [7, -1, 33]
puts list[-1] # 33
puts list[-2] # -1
puts list[-3] # 7
puts list[-4] # nil
puts list[9]  # nil
```

## Add to end

Elements can be added to the end of an array using two different notations

### push

Push, can accept 1 or more elements

```ruby
list = ["apple", "orange", "kiwi"]
list.push("banana")
# list is now ["apple", "orange", "kiwi", "banana"]
list.push("pear", "nectarine")
# list is now ["apple", "orange", "kiwi", "banana", "pear", "nectarine"]
```

### shovel

The shovel method (`<<`) can only accept 1 element

```ruby
list = [true, false]
list << false
# list is now [true, false, false]
list << false, true # error!
```

It is possible to have an array of arrays, but be careful when using shovel (i.e., don't shovel an array onto an array, or you will have a nested array)

```ruby
nums = [4, 5, 6]
# shoves an array holding 7 onto nums
nums << [7]
# array is now [4, 5, 6, [7]]
```

## Iterating over an array

Iterating over an array, is a process to look at each element of an array and perform some action.

You can use either a `do` ... `end` block or a block with curly braces for the each method. By convention `do` ... `end` should be used for multi-line blocks, and curly braces for single-line blocks. Keep in mind though, that curly braces have high precedence when compared to `do` ... `end` blocks.

### each

```ruby
nums = [1, 3, 5]
nums.each do |num|
  puts num
end

nums.each { |num| puts num }
```

### each with index

```ruby
nums = [2, 4, 6]
nums.each_with_index do |num, index|
  puts "#{index}: #{num}"
end

nums.each_with_index { |num, index| puts "#{index}: #{num}" }
```

## Useful array methods

| Method                  | Description                                                                 |
| :---------------------- | :-------------------------------------------------------------------------- |
| `arr.length`            | Returns the number of elements currently stored in `arr`                    |
| `arr.empty?`            | Returns `true` if there are no elements in `arr`, otherwise returns `false` |
| `arr.first`             | Returns the first element from `arr`                                        |
| `arr.last`              | Returns the last element from `arr`                                         |
| `arr.take(n)`           | Returns the first `n` elements from `arr`                                   |
| `arr.include?(element)` | Returns `true` if element is stored in `arr`, otherwise returns `false`     |

## Exercises

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: 0746b75d-10ef-4c65-b3d9-511c376cc711
* title: Square of Each Value
* docker_directory_path: /custom-snippets/squares
* points: 1
* topics: arrays

##### !question

Create an array which will store the square of each value between 2 and 5, inclusive.  Then print it with `puts "#{array}"`

##### !end-question

##### !placeholder


```ruby
array = []
# Your code goes here

puts "#{array}"
```

##### !end-placeholder

<!-- other optional sections -->
##### !hint

You will need a loop, or to adjust the array initialization.

##### !end-hint
##### !explanation

Two potential solutions:

```ruby
list = []
(2..5).each do |i|
  list.push(i * i)
end
```

or 

```ruby
list = Array.new(4) { |i| (i + 2) * (i + 2) }
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: 9701bc66-9118-4f4a-897e-79a73de52ebf
* title: Working with an array
* docker_directory_path: /custom-snippets/array1
* points: 1
* topics: arrays

##### !question

Given the array below, named `list`, which contains three people, Ada Lovelace, Annie Easley, and Margaret Hamilton, add one new person of your choice, you can do this directly, no user input needed (no `gets.chomp`).

**Put your code between the comments**

##### !end-question

##### !placeholder


```ruby
def array_1
  list = ["Ada Lovelace", "Annie Easley", "Margaret Hamilton"]
  # your code here
  

  # end of your code
  return list
end
```

##### !end-placeholder

<!-- other optional sections -->
##### !hint

Just put your code in between the comments.

##### !end-hint


##### !explanation

One solution is below.

```ruby
def array_1
  list = ["Ada Lovelace", "Annie Easley", "Margaret Hamilton"]
  # your code here
  
  list << "Erica Joy Baker"

  # end of your code
  return list
end
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: d3fd7b17-25a0-4f2e-beab-a4f9fd918f1c
* title: Working with an array part 2
* docker_directory_path: /custom-snippets/array2
* points: 1
* topics: arrays

##### !question

Given the array below, named `list`, which contains three people, Ada Lovelace, Annie Easley, and Margaret Hamilton, print out Annie Easley from the array using `puts`.

**Put your code between the comments**

##### !end-question

##### !placeholder


```ruby
list = ["Ada Lovelace", "Annie Easley", "Margaret Hamilton"]
```

##### !end-placeholder

<!-- other optional sections -->
##### !hint

Just put your code in between the comments.

##### !end-hint


##### !explanation

One solution is below.

```ruby
list = ["Ada Lovelace", "Annie Easley", "Margaret Hamilton"]

puts list[1]
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: c3ce4491-f0ad-48a3-9be6-d3f864659e28
* title: Working with an array part 3
* docker_directory_path: /custom-snippets/array3
* points: 1
* topics: arrays

##### !question

Given the array below, named `list`, which contains three people, Ada Lovelace, Annie Easley, and Margaret Hamilton, replace Ada Lovelace with Megan Smith.

**Put your code between the comments**

##### !end-question

##### !placeholder


```ruby
def array_3
  list = ["Ada Lovelace", "Annie Easley", "Margaret Hamilton"]
  # your code here
  

  # end of your code
  return list
end
```

##### !end-placeholder

<!-- other optional sections -->
##### !hint

Just put your code in between the comments.

##### !end-hint


##### !explanation

One solution is below.

```ruby
def array_3
  list = ["Ada Lovelace", "Annie Easley", "Margaret Hamilton"]
  # your code here

  list[0] = "Megan Smith"

  # end of your code
  return list
end
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: paragraph
* id: 7797286e-4ac7-44a5-8b13-1669a3e184b6
* title: Array practice
* points: 1
* topics: array

##### !question

In the textbox below create an array which stores the names of people that inspire you. 

Then write down two different ways you can access the second-to-last name in your array? 

**This is not an autograded exercise.**

##### !end-question

##### !placeholder

```ruby
list = []
```

##### !end-placeholder

<!-- other optional sections -->
##### !hint

Remember you can use negative numbers to access the array from back to front.  For example -1 would get the last element of the array.  You can also use the `.length` field to find the length of the array and then length - 1 would be the last index.

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Potential solution:

```ruby
list = ["Dee Del Rosario", "Margaret Hamilton", "Kareem Abdul-Jabbar", "Martin Luther King Jr."]

# Solution 1:
list[-2]

# Solution 2:
list[list.length - 2]
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: paragraph
* id: 5867e8f9-1788-4201-a0b0-31b9d7f92a3f
* title: Array practice
* points: 1
* topics: array

##### !question

Create an array which stores the numbers 1 – 15. Then write down how to access the middle number? 

**This is not an autograded exercise.**

##### !end-question

##### !placeholder

```ruby
list = []
```

##### !end-placeholder

<!-- other optional sections -->
##### !hint

Remember you can use negative numbers to access the array from back to front.  For example -1 would get the last element of the array.  You can also use the `.length` field to find the length of the array and then length - 1 would be the last index.

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Potential solution:

```ruby
list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

# Solution
puts list[list.length / 2]

# Alternative Solution
puts list[7]
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: 750a3e74-9781-4145-bc6b-721029d11d21
* title: Powers of two
* docker_directory_path: /custom-snippets/powers-of-two
* points: 1
* topics: arrays, loops

##### !question

Write code that will create an array named powers_of_2, and stores the first 10 powers of 2

##### !end-question

##### !placeholder

```ruby
def powers_of_two
  powers_of_2 = []
  # Your code goes inside here:

  # Your code ends above here

  return powers_of_2
end
```

##### !end-placeholder

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

## Resources

* [Ada Arrays Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=5fb869d2-db52-4cd2-a1cc-238e0e084fa5) (15:34)
* [Ruby Documentation on Arrays](http://ruby-doc.org/core-2.4.0/Array.html)
