# Iterators

## Definitions

* Iterator
    * An object that traverses (i.e., iterates) over the elements in a collection (e.g., array) and usually does something with those elements

## Overview

* Iterators are methods
* All iterators require blocks, and execute those blocks as many times as there are iterations
* Iterators return all the elements of a collection, one after the other
* When using an iterator it's impossible to get an infinite loop, as the iterator handles these details for you
* The collection can later be changed without having to update the code block using the iterator, it handles those changes for you

## `each`

* `each` is an iterator that provides each value of the collection, one by one, to the block
* `each` must be associated with a block
* the iteration variable is optional with `each`, but usually used

We will talk about collections like arrays a but further on.

```ruby
# each syntax
# do ... end is the block
# variable is the iteration variable
collection.each do |variable|
   code
end
```

```ruby
# code example
# prints out all the values of arr, each on its own line
arr = [1,2,3,4,5]
arr.each do |element|
   puts element
end
```

### Using `each` with `range`

* A range is a set of values with a beginning and an end
* Ranges always include the beginning value
* When two dots are used, the end value is included
* When three dots are used, the end value is not included

```ruby
# code example
# prints out 1,2,3,4 each on its own line
(1..4).each do |i|
  puts i
end
```

```ruby
# code example
# prints out 1,2,3 each on its own line
(1...4).each do |i|
  puts i
end
```

## `times` as an iterator

* when `times` is used with an iteration variable it becomes an iterator over a certain range of values
* `times` must be associated with a block, but the iteration variable is optional
* `times` starts counting at `0`, and goes up to 1 less than the value placed before `.times`

```ruby
# times syntax with iteration variable
<integer>.times do |variable|
  code
end
```

```ruby
# code example
# prints out 0, 1, 2 each on its own line
3.times do |num|
  puts num
end
```

## Iterator Tables

1. `range`/`each`

```ruby
(1..3).each do |num|
  puts num * num
end
```

| num   | output |
| :---- | :----- |
| ~~1~~ | ~~1~~  |
| ~~2~~ | ~~4~~  |
| 3     | 9      |

2. `range`/`each` with sum

```ruby
total = 0

(1..3).each do |num|
  total = total + num
end

puts total
```

| num   | total | output |
| :---- | :---- | :----- |
| -     | ~~0~~ | -      |
| ~~1~~ | ~~1~~ | -      |
| ~~2~~ | ~~3~~ | -      |
| ~~3~~ | ~~6~~ | -      |
| 3     | 6     | 6      |


<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: paragraph
* id: 72dd45ae-e587-46eb-9751-d322cb65dd48
* title: Times comparison
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: iteration

##### !question

## Loop vs. Iterator Comparison

 `times` example

Please write a few sentences about:

1. What is the difference between these two sections of code?
2. Which is a better style solution?

```ruby
2.times do
  puts "dance"
end
```

```ruby
2.times do |i|
  puts "dance"
end
```

##### !end-question

##### !placeholder

##### !end-placeholder

<!-- other optional sections -->
##### !hint

Do you notice anything about the line with `2.times do`?

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

The second example has a loop variable `i`, which is unused.  Because it's unused, it's better left off for brevity and to reduce confusion.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->
