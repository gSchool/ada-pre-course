# Exercise

### !callout-warning

## NOT Automatically Graded

The item below is not automatically graded.  Your instructor will provide feedback

### !end-callout

<!-- ======================= END CHALLENGE ======================= -->

## 1. Password Verification

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: project
* id: f2383663-d170-49ad-b48a-9ab3a707ada7
* language: Ruby
* title: Password Verification
* points: 1
* topics: conditionals, iteration

##### !question

Many companies have password requirements (must include a letter, a number and a symbol for example and require a password of a specific length). We're going to write a program that will read in a proposed password and only accept it, if it meets all rules.  

Create a program that will:
* Prompt a user for input (for a new password)
* Read in the proposed Password to a variable
* If the password contains a number and a symbol (@, %, \*, or !) and contains 8 or more characters then accept the password and congratulate the user, if not make them reenter the password until they enter an acceptable password
* [Optional] Make the user enter the password a second time to verify, and if it's not the same as the original password, make them repeat the process
* [Optional] Make them include a capital and a lowercase letter
* [Optional] Let them know what they did wrong

##### !end-question


##### !placeholder

Place a link to your code here in either a Repl.it, or Gist or Github repo

##### !end-placeholder

##### !hint

A while loop could be appropriate, you could also use the string `.include?` method with some AND clauses (easiest) or a [regular expression](https://www.rubyguides.com/2015/06/ruby-regex/)

##### !end-hint
##### !rubric

# Candy Machine

| Requirement                                                                                                   | Comments |
| ------------------------------------------------------------------------------------------------------------- | -------- |
| Well formatted code                                                                                           |          |
| Prompts for password                                                                                          |          |
| Requires a symbol in the password                                                                             |          |
| Requires a password of length 8 or more                                                                       |          |
| Makes the user renter the password if it doesn't satisfy                                                      |          |
| `Optional`                                               Make the user enter the password a second time       |
| `Optional`                                               Make the user enter a capital and a lowercase letter |
| `Optional`                                                Lets the user know what they did wrong              |



##### !end-rubric

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

## 2. Election Time

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: project
* id: 971ab87c-9472-4a63-bd2f-5ca74dd1ea14
* title: Election Time
* points: 1
* topics: loops, conditionals

##### !question

## Assignment: Election Time

You are going to create an electronic election program that tracks votes, total votes, and determines a winner.

### Primary Requirements

Create an election program that accepts input from the user and outputs the winner of the election

  - *Input*: Poll 10 people for their election vote
  - *Output*: Print the total votes cast as well as the winner of the election

### Example Output

Below is an example program output. User input is indicated in &lt;&gt; (angle brackets).

```
  Welcome to my election voting program.

  Election candidates are: Donald Duck, Minnie Mouse, Goofy

  Vote #1: <Goofy>
  Vote #2: <Minnie Mouse>
  Vote #3: <Minnie Mouse>
  Vote #4: <Donald Duck>
  Vote #5: <Goofy>
  Vote #6: <Goofy>
  Vote #7: <Minnie Mouse>
  Vote #8: <Minnie Mouse>
  Vote #9: <Minnie Mouse>
  Vote #10: <Minnie Mouse>

  ELECTION RESULTS....

  Vote Summary:
  Goofy - 3 vote(s)
  Minnie Mouse - 6 vote(s)
  Donald Duck - 1 vote(s)

  WINNER: Minnie Mouse!
```

### Optional Enhancements

Some of these enhancements are better solved after having knowledge from [lesson 12](https://github.com/Ada-Developers-Academy/jump-start/tree/master/learning-to-code/arrays), so you can try some and then come back and do others after lesson 12.

- Handle ties for a winner appropriately
- Handle grammar of vote summary saying vote or votes appropriately
- Handle write in votes
- Consider how to handle more than 10 votes
- Consider how to handle more than 3 candidates
- Refactor your code so that your code is DRY (Don't Repeat Yourself)

##### !end-question

##### !placeholder

Link to your code on repl.it, gist or github

##### !end-placeholder

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->
