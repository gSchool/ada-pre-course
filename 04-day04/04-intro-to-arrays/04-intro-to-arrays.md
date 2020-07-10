# Introduction to Arrays

## Goals

Students should be able to:

- Explain what an array is
- Create an array and assign values to elements in the data structure
- Access specific elements through the index number.
- Iterate through an array.

## Overview

Arrays are like a list of things.  They maintain elements in order and identify each element with an _index number_.  The first element is at index 0, the second at index 1, and so on.

```ruby
list = ['Ada', 'Ari', 'Dee', 'Dan']

puts list[0] # Ada

puts list[1] # Ari
```

You can also access the last element in an Array with the index `-1`, and the 2nd to last with `-2`.

```ruby
puts list[-1] # Dan
puts list[-2] # Dee
```

Arrays also have a method `.length` which returns the number of elements in the array.

```ruby
puts list.length # 4
```

You can also use the length to find the index of the last element:

```ruby
puts list[list.length - 1] # Dan
```

**Question**  How can you find the 2nd to last element in any array called `my_list` without using -2?

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: cde07b81-e089-4000-b79e-bff8ae7595fa
* title: How can you find the 2nd to last element in any array without using -2?
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

How can you find the 2nd to last element in any array without using -2?

##### !end-question

##### !placeholder

my_list[   ]

##### !end-placeholder

##### !answer

my_list[my_list.length - 2]

##### !end-answer

<!-- other optional sections -->
##### !hint

How can you find out how long the list is?

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

The last index of the array is the length of the array minus 1, because the first index starts at 0.  So the 2nd to last index is the length - 2

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->
<details>
  <summary>
    Click here to see an answer:
  </summary>

  `puts list[list.length -2]`
</details>

## Looping Through an Array

You can also loop through an array with the array's `.each` method.  
This code:

```ruby
list = ['Ada', 'Charles', 'Dee', 'Dan']

list.each do |name|
  puts "Hello #{name}!"
end
```

Prints out:

```bash
Hello Ada!
Hello Charles!
Hello Dee!
Hello Dan!
```

The `.each` method will iterate through the array.  On the 1st iteration `name` becomes "Ada", on the second iteration `name` becomes "Charles" and so on, until on the last iteration `name` will be set to "Dan".  

**Optional Exercise**

Fill in the missing code to calculate an average of the values in the list.  **Hint** what data type should you use?

```ruby
  list = [3, 5, 6, 15, 27]
  sum = 0

  # Your Code here



  puts "The average is #{average}"
```

## Resources

- [Array Documentation](https://ruby-doc.org/core/Array.html)
- [Ruby for Beginners - Arrays](http://ruby-for-beginners.rubymonstas.org/built_in_classes/arrays.html)