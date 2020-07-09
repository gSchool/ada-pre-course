# Boolean Expressions

## Overview

A boolean expression is an expression that evaluates to either `true` or `false`. They are commonly used in `if/elsif` statements and `while` loops.

## Video Lesson

<iframe src="https://adaacademy.hosted.panopto.com/Panopto/Pages/Embed.aspx?id=db632849-5d1c-4483-aa7e-cb95ec754490&autoplay=false&offerviewer=true&showtitle=true&showbrand=false&start=0&interactivity=all" width=720 height=405 style="border: 1px solid #464646;" allowfullscreen allow="autoplay"></iframe>

## Precedence

* Also commonly called order-of-operations

| __Priority__ | __Operation__                                                            |
| :----------- | :----------------------------------------------------------------------- |
| 1            | parens                                                                   |
| 2            | unary operations                                                         |
| 3            | multiplication, division, mod                                            |
| 4            | addition, subtraction, string concatenation                              |
| 5            | less than, less than or equal to, greater than, greater than or equal to |
| 6            | equal to, not equal to                                                   |
| 7            | and                                                                      |
| 8            | or                                                                       |

## Relational Operators

* Relational operators allow you to compare two values
* In ruby you can use relational operators on numbers and strings
* The opposite of `>` is `<=` and the opposite of `<` is `>=`

| __Operator__ | __Description__          | __Example__  | __Result__ |
| :----------- | :----------------------- | :----------- | :--------- |
| `==`         | equals                   | `1 + 1 == 2` | `true`     |
| `!=`         | does not equal           | `3.2 != 2.5` | `true`     |
| `<`          | less than                | `10 < 5`     | `false`    |
| `>`          | greater than             | `10 > 5`     | `true`     |
| `<=`         | less than or equal to    | `126 <= 100` | `false`    |
| `>=`         | greater than or equal to | `5.0 >= 5.0` | `true`     |
 
 ## Boolean values

* The two possible values of a boolean data type are `true` and `false`
* A non-boolean value that evaluates to true, is called "truthy"
	* Everything in ruby is "truthy" except for `nil` 
* A non-boolean value that evaluates to false, is called "falsey", also sometimes "falsy"
	* `nil` is the only "falsey" value in ruby

### Examples

```ruby
if 2
	puts "2 is truthy"
end

if 'hello'
	puts "\"hello\" is truthy"
end

if !nil
	puts "nil is falsey"
end
```

## Logical operators

* Logical operators allow you to combine or modify boolean expressions

| __Operator__   | __Description__ | __Example__              | __Result__ |
| :------------- | :-------------- | :----------------------- | :--------- |
| `&&`           | and             | `(2 == 3) && (-1 < 5)`   | `false`    |
| `\|\|`         | or              | `(2 == 3) \|\| (-1 < 5)` | `true`     |
| `!`            | not             | `!(2 == 3)`              | `true`     |

| __p__   | __q__   | __p && q__ | __p &#124;&#124; q__ |
| :------ | :------ | :--------- | :------------------- |
| `true`  | `true`  | `true`     | `true`               |
| `true`  | `false` | `false`    | `true`               |
| `false` | `true`  | `false`    | `true`               |
| `false` | `false` | `false`    | `false`              |

| __p__   | __!p__  |
| :------ | :------ |
| `true`  | `false` |
| `false` | `true`  |

### DeMorgan's Laws

Named after Augustus De Morgan, a 19th-century British mathematician, they are a set of rules that describe what happens when you perform a negation on a `&&` statement, or an `||` statement.
* `!(p && q)` can also be described as `!p || !q`
* `!(p || q)` can also be described as `!p && !q`

### Short Circuit Evaluation

Short Circuit Evaluation describes a semantic rule related to logical operators in boolean expressions. It states that the second argument is only evaluated if the first argument is not enough to determine the overall value of the expression.

Specifically, when the first argument of an `&&` statement evaluates to false, the second argument is not considered since the entire statement will evaluate to false. Conversely, if the first argument of an `||` statement evaluates to true, the second argument is not considered since the entire statement will evaluate to true.

#### Examples

```ruby
x = true
y = false

# prints false because not both are true
puts x && y  

# prints true because one side of the || is true
puts x || y

# no short circuit
# y is evaluated
if x && y
	puts "1"
end

# short circuit
# x is not evaluated
if y && x
	puts "2"
end

# short circuit
# y is not evaluated
if x || y
	puts "3"
end

# no short circuit
# x is evaluated
if y || x
	puts "4"
end
```

### Common Mistake

It's important to understand how to combine relational operators with logical operators.

You cannot for example ...

```ruby
x = 1
if x == false || 2 || 48
	puts "x is false, 2, or 48"
end
```

This code prints `x is false, 2 or 48`, unexpectedly. 

```
x == false || 2 || 48
false || 2 || 48
2 || 48
# and since 2 is truthy, the statement is printed
# note that short circuit evaluation results in the 48 not being considered
```

The correct way to code this is ...

```ruby
x = 1
if x == false || x == 2 || x == 48
	puts "x is false, 2, or 48"
end
```


<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: be62e866-8c2a-479d-beba-046a72cf0b20
* title: Conditional Question #1
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: conditionals

##### !question

What will this print out?

```ruby
x = 48
if x == false || x == 2 || x == 48
	puts "true"
end
```

##### !end-question

##### !placeholder

printout

##### !end-placeholder

##### !answer

/true/

##### !end-answer

<!-- other optional sections -->
##### !hint

Give the exact output this will print.

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Since x is 48, the last part of the if statement is true, and since everything is connected by ORs only one has to be true.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: b637f4b4-7426-4e71-b9da-d4611aae143e
* title: Conditional Question #1
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: conditionals

##### !question

```ruby
x = false
puts x == false && x == 2 && x == 48
```

##### !end-question

##### !placeholder

What will the code print?

##### !end-placeholder

##### !answer

/false/

##### !end-answer

<!-- other optional sections -->
##### !hint

The && means that all the conditions have to be true for the condition to be true

##### !end-hint

<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Because x can't be equal to `false`, `48` and `2` at the same time, the condition is false and it will execute the `else` block.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

## Resources

[The Beginner's Guide to Ruby If & Else Statements](https://www.rubyguides.com/ruby-tutorial/ruby-if-else/)
