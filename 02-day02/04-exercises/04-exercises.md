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
