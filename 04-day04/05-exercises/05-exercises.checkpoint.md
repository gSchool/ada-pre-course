# Exercise

## 1. Password Verification

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: Ruby
* id: ea7a085e-5704-47ed-80a0-b1788fd05ccb
* docker_directory_path: /custom-snippets/password
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

**Be aware that this submission will not be autograded

##### !end-question

##### !placeholder

```ruby
print "Please enter a new password ==> "
password = gets.chomp
```

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






