# Ruby Types

Everything in Ruby is an object. There are 7 data types you should know about now.

| Data Type | Description                                    | Example               |
| :-------- | :--------------------------------------------- | :-------------------- |
| String    | Anything surrounded by single or double quotes | `"hello"`, `'hello'`  |
| Integer   | A number with no decimal                       | `1`, `0`, `-7`        |
| Float     | Real value (decimal)                           | `0.5`                 |
| Array     | An ordered list                                | `[5, 0, 1]`           |
| Symbol    | A named object                                 | `:apple`              |
| Hash      | A set of key, value pairs                      | `{ A: 2, B: 3, C: 1}` |
| Range     | A set of values with a beginning and an end    | `(2..6)`              |

> Fixnum is another name for Integer. Ruby version 2.4.0 introduced the term
> Integer, so if your ruby version is at least 2.4.0, use Integer. Otherwise
> use Fixnum. You can check your version by typing `ruby --version` in the
> terminal.


### Determining the type
To determine the type of an object you can use `.class`

```ruby
x = 1
puts x.class #Integer

word = "hello"
puts word.class #String
```


<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 3c50205b-1ea5-4c8c-8fcc-b779fd9c55b3
* title: Types Question 1
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

What type is 3.7

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

##### !end-answer

##### !explanation

Decimal numbers are called Floats in Ruby.

##### !end-explanation

<!-- other optional sections -->
##### !hint

Notice the decimal

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

A float is a real number, i.e. a number with a decimal.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 0f039636-9a6e-4212-990e-b795797ac27a
* title: Types Question 2
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

What type is "100"?

##### !end-question

##### !options

* String
* Float
* Integer
* Hash
* Array

##### !end-options

##### !answer

* String

##### !end-answer

##### !explanation

Strings are a collection of literal characters and are indicated by being enclosed in quotations.

##### !end-explanation

<!-- other optional sections -->
##### !hint

Notice the quotations.

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

String literals are text enclosed in single or double quotes.  So "hello" is a string as is '100'.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: c6b1b7aa-6b60-46f7-8722-0bbf9e504cdb
* title: Types Question 3
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

What data type is `{ a: 3, b: 47, }`

##### !end-question

##### !options

* String
* Float
* Integer
* Hash
* Array

##### !end-options

##### !answer

* Hash

##### !end-answer

##### !explanation

Hashes are collections of key-value pairs.

##### !end-explanation

<!-- other optional sections -->

##### !hint

Notice the curly braces and pairs of values separated by colons (:).

##### !end-hint

<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->