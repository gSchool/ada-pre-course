# Scope

## Overview

Scope in programming defines when something (usually a variable) is visible to something else. In regards to scope of variables, the scope defines what knows about and can access that variable.

<iframe src="https://adaacademy.hosted.panopto.com/Panopto/Pages/Embed.aspx?id=d9f0f22c-607a-4186-b5f3-1e62a055a317&autoplay=false&offerviewer=true&showtitle=true&showbrand=false&start=0&interactivity=all" style="width: 720px; height: 405px; border: 1px solid #464646;" allowfullscreen allow="autoplay"></iframe>

## Variable types and their scope

You will not need to know about most of these until a few weeks into Ada, but it's important to have a general idea about the different types of variables and their scope. You should understand local variables and their scope by the end of JumpStart Live.

| Variable type     | Syntax   | Scope                                                                 |
| :---------------- | :------- | :-------------------------------------------------------------------- |
| Class variable    | `@@name` | Visible to the class, and sub-classes                                 |
| Instance variable | `@name`  | Visible to a specific object, and the instance methods of that object |
| Constant          | `NAME`   | Visible to everything that uses the file, can't be modified           |
| Global variable   | `$name`  | Visible to everything that uses the file                              |
| Local variable    | `name`   | Depends!                                                              |

**NOTE**: We try to avoid using class variables and global variables if possible because they can cause hard to fix bugs.

<!-- available callout types: info, success, warning, danger, secondary  -->
### !callout-warning

## Local variables and scope

When you define a local variable inside of a block, it is not visible outside of that block

### !end-callout

### Examples

* In Ruby, local variables created outside of a block, are visible to everything inside of that file.  What does this print?
	
```ruby
list = ["Goofy", "Minnie", "Daisy"]
name = "Donald"

list.each do |name|
  name << " birthday! "
end

puts name
```

In Ruby, if a variable is redefined inside a block, that is a new variable with scope only inside that block.

```ruby
list = ["Goofy", "Minnie", "Daisy"]
greeting = ""

list.each do |name|
  name << " birthday! "
  greeting = name
end

puts greeting
```

Output:

```bash
Daisy birthday! 
```

* In ruby, local variables created inside if statements, are visible outside of those if statements

  ```ruby
  x = gets.chomp.to_i
  if x > 0
    y = 1
  else
    y = -1
  end
	
  puts y # No error, if statements are not considered blocks in Ruby
  ```

* In ruby, local variables created inside of a block are not visible outside of those blocks

  ```ruby
  (1..3).each do |num|
    last = num
  end
  
  puts last # NameError: undefined local variable or method x
  ```

## Resources
* [Ada Scope Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=d9f0f22c-607a-4186-b5f3-1e62a055a317) (6:24)
