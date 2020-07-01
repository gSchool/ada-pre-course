# Exercises


<!-- available callout types: info, success, warning, danger, secondary  -->
### !callout-warning

## NOT Automatically Graded

The items below are **not** automatically graded, it's just too hard to automatically grade random data.  However your Jumpstart Instructor will provide you feedback after submission.

### !end-callout

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: project
* id: 18928d88-3a1e-465b-8a28-37d9cf4d9ed5
* title: Account Generator
* points: 2
* topics: arrays, loops, random

##### !question

We are going to write a program that generates some student information. This exercise will practice our skills with strings, random numbers, arrays and iterators.

## Requirements

1. You will start by creating three arrays:
    - An array that will contain student names
    - An array that will store student ID numbers
    - An array that will contain student email addresses

    **Note** Make sure to name your variables appropriately so that it is easy to deduce the information stored in each array and that this information is not singular. e.g.  
    `flowers = ["lily", "rose", "gardenia", "daisy"]` vs. `flower = "tulip"`

2. Write a `times` loop that asks the user to enter in 5 student names (first and last name) and store those values in the first array in **all uppercase** even if the information is not entered by the user in uppercase.  
Example output:

| Value | "ROSIE MARTINEZ" | "JOE LIU" | "SALLY SUE" | "BOB JOHNSON" | "DELIA AGHO" |
| :---- | :--------------- | :-------- | :---------- | :------------ | :----------- |
| Index | [0]              | [1]       | [2]         | [3]           | [4]          |


3. Write a `times` loop to generate random student ID numbers from 111111 to 999999 and put these values to the student ID number array.  
Example output:

| Value | 123256 | 349222 | 999999 | 111112 | 726488 |
| :---- | :----- | :----- | :----- | :----- | :----- |
| Index | [0]    | [1]    | [2]    | [3]    | [4]    |

4. Write a `times` loop to generate student email addresses in the format:
  (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org  
  Example output:

| Value | "RMARTINEZ256@adadevelopersacademy.org" | "JLIU222@adadevelopersacademy.org" | "SSUE999@adadevelopersacademy.org" | "BJOHNSON112@adadevelopersacademy.org" | "DAGHO488@adadevelopersacademy.org" |
| :---- | :-------------------------------------- | :--------------------------------- | :--------------------------------- | :------------------------------------- | :---------------------------------- |
| Index | [0]                                     | [1]                                | [2]                                | [3]                                    | [4]                                 |

5. Write the code which will print out all the student names, ID numbers, and email addresses in parallel.

**Submit a link to your code, either a [repl.it](https://repl.it) link, a [gist](https://gist.github.com), or a github repository.**

## Optional Enhancements

- make sure none of the IDs are duplicates
- account for ID numbers whose last 3 digits are less than 100 (e.g. 111008) because these ID numbers will generate an email address with less than 3 digits at the end without special cases.
- on email generation, account for first names with a space in them  
  e.g. if the first name is "Mary Jane", then the first initial should be "MJ" rather than just "M"
- read in the student names from a file instead of the user and make the array size according to the number of names

##### !end-question

##### !placeholder

Link to your code

##### !end-placeholder

<!-- other optional sections -->
##### !hint

You can use the [rand](https://www.rubyguides.com/2015/03/ruby-random/) method to get a random number.  Then some string interpolation and getting a substring and you can figure this one out.

##### !end-hint
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: project
* id: 559bc859-f669-4eb4-9bc2-048ee4ed4bed
* title: Account Generator with Hashes
* points: 2
* topics: Hashes, loops, random

##### !question

Now that we know about hashes, we will [refactor](https://en.wikipedia.org/wiki/Code_refactoring) your original account generator code to utilize arrays with hashes. Since each student has three pieces of data, we will utilize a hash to store these three pieces of data, related to one another.

This is a better solution because this will keep each student record together instead of having three separate arrays with the student data. When a new student record is created, one hash needs to be added to the array rather than three pieces of data to individual arrays.

```ruby
student_data = [
  {
    name: "Mary Jane",
    ID: 1000000,
    email: "mjane@adadevelopersacademy.org"
  },
  {
    name: "Jones Smith",
    ID: 1000001,
    email: "jsmith@adadevelopersacademy.org"
  }
]

# Retrieve the data from the array of hashes
student_data[0][:name]
# => "Mary Jane"
```

Complete the following refactor steps:
- Utilize a single array variable to store all student information, instead of three individual arrays. This array will contain many hashes.
- Utilize a single loop to drive the hash population (you may have nested loops inside this loop for other functionality):
  - accept user input for the student's name
  - generate random student ID
  - generate student email address from previous pieces of data
- Update the printing functionality to utilize this new hash variable to print out student roster
- 
##### !end-question

##### !placeholder

Link to your code here

##### !end-placeholder

<!-- other optional sections -->
##### !hint

Take a look at the nested hashes lesson.  An array of hashes would make sense.

##### !end-hint
##### !rubric

| Requirement                                                                                                                                  | Comments |
| -------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| Well formatted code                                                                                                                          |
| Creates an array of hashes with keys for names, ID numbers and email addresses                                                               |
| Reads in Student names                                                                                                                       |
| Generates random ID numbers                                                                                                                  |
| Generates proper student email addresses using the (first initial) + (last name) + (last 3 digits of the ID number)@adadevelopersacademy.org |
| Prints out student accounts                                                                                                                  |
| `Optional` Prevents duplicates                                                                                                               |
| `Optional` Handles small last 3 digits of an ID number                                                                                       |
| `Optional` Handles first names with spaces (initials MJ for "Mary Jane")                                                                     |
| `Optional` Reads input from a file                                                                                                           |

##### !end-rubric
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->