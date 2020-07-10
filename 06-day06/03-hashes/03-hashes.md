# Hashes

## Overview

* Hashes are a collection of paired information
* Sometimes described as a collection of key, value pairs, or as a "look up table"
* Hashes use any object for their index
* Each pair has both a key and a value
* The keys in the hash are unique (i.e., not repeated), but values may be repeated
* Hashes store information in the order in which the keys were inserted, you however should never depend on this order

## Creating a hash

```ruby
# an empty hash
students = {}

# hash created with key,value pairs
# keys are symbols
soda = {coke: 3, sprite: 7, pepsi: 1}

# hash created with key,value pairs
# keys are numbers
# must use hash rocket
people = {104 => "Korica", 54 => "Jamie", 4 => "Kelly"}
```

## Storing and retrieving data from a hash

### Syntax

```ruby
# will store the key,value pair into the hash
# if the key already exists, it will change the current value to the new value
hash[key] = value
```

### Example

```ruby
students[:Riley] = 29
# now the hash holds one key,value pair
students[:Sam] = 42
# now the hash holds two key,value pairs

puts "Student Riley is #{students[:Riley]} years old"
```

## Symbols and Hashes

Because symbol values are unique in memory, we often use symbols as keys for a hash.

We could create a hash like this:

```ruby
colors = {
  "red" => 32,
  "blue" => 13,
  "yellow" => 2,
  "purple" => 104,
  }
```

In the preceeding example each key for the hash is a String, which is a bit wasteful as we could have many strings storing words like "red" in memory.  Instead we could convert them to symbols like this:

```ruby
colors = {
  :red => 32,
  :blue => 13,
  :yellow => 2,
  :purple => 104,
}
```

That's ooookkkkkay, and we saved typing one key, but it's still a bit ugly (my personal opinion).  So Ruby introduced a syntax exclusively for hashes with keys as symbols.

```ruby
colors = {
  red: 32,
  blue: 13,
  yellow: 2,
  purple: 104,
}
```

Notice we moved the colon to the right side of the key.  They're still symbols, but it looks neater.  

<!-- available callout types: info, success, warning, danger, secondary  -->
### !callout-info

## Note

This is the preferred syntax for hashes.  Avoid using the hash-rocket `=>` unless you need a non-symbol key.

### !end-callout


```ruby
# red, blue, yellow, and purple are all symbols
# when initializing a hash, you do not need the preceding :
colors = {
  red: 32, 
  blue: 13, 
  yellow: 2, 
  purple: 104
}

# when accessing, you do need the :
puts "#{colors[:red] people love red}"
```

## Iterating over a hash

```ruby
# iterating over key,value pairs
students.each do |name, age|
  puts "Student #{name} is #{age} years old"
end

# iterating over key,value pairs (better style)
students.each { |name, age| puts "Student #{name} is #{age} years old" }

# iterating over keys only
students.each_key do |name|
  puts "#{name}"
end

# iterating over keys only (better style)
students.each_key { |name| puts "#{name}" }

# iterating over values only
students.each_value do |age|
  puts "#{age}"
end

# iterating over values only (better style)
students.each_value { |age| puts "#{age}" }
```

## Useful hash methods

| Method            | Description                                                   |
| :---------------- | :------------------------------------------------------------ |
| `h.clear`         | Remove all key-value pairs from hash `h`                      |
| `h.empty?`        | Returns `true` if hash `h` contains no key-value pairs        |
| `h.length`        | Returns the number of key-value pairs in hash `h`             |
| `h.keys`          | Returns a new array with the keys from hash `h`               |
| `h.values`        | Returns a new array with the values from hash `h`             |
| `h.key(value)`    | Returns the key of an occurrence of a given value in hash `h` |
| `h.key?(key)`     | Returns `true` if key is present in hash `h`                  |
| `h.value?(value)` | Returns `true` if value is present in hash `h`                |

## Optional Practice Exercises

1. We want to be able to quickly determine the state abbreviation for the states in the United States. 

  Determine whether it is best to use an array or a hash, and create it storing at least 4 states and their abbreviations.

  Then write code to print out only the states, then only the abbreviations, and finally nicely formatted output displaying both the states and their abbreviations (e.g., The abbreviation for Nebraska is NE)

2. We want to be able to quickly determine the amount of different types of food items you have in your house.

  Determine whether it is best to use an array or a hash, and create it storing at least 4 food items and their quantities.

  Then write code to print out all the items and their quantities using nicely formatted output.

  ```bash
  # Example output
  3 Oranges
  12 Tortillas
  1 Cookie
  4 Popsicles
  ```

## Resources

* [Ada Hashes Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=6bcf8425-d83c-43b3-8cdc-8792acca77ef) (7:34)
* [Ruby Documentation on Hashes](http://ruby-doc.org/core-2.4.0/Hash.html)
