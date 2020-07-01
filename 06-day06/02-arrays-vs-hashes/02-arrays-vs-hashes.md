# Arrays vs Hashes

## Arrays

Arrays are ordered lists of items. The order of the data is maintained and important. Arrays have integer indexes starting at 0 which cannot be changed. This means you can retrieve data using a 0-based index.

## Hashes

Hashes are a collection of paired information. Also described as a collection of key-value pairs, or as a "look up table". Hashes use any object for their index.

Each pair has both a key and a value. The keys in the hash are unique (i.e., not repeated), but values may be repeated. Hashes store information in the order in which the keys were inserted, you however should never depend on this order.

## Similarities

* Both Arrays and Hashes are collections that store and retrieve data
* If you try and access an element of an array or a hash that does not exist, the value `nil` will be sent back

## Differences

* Arrays store values, but have fixed indexes (integers, starting at 0)
* Hashes allow you to still store data but to define the index, or key, as any object

## Tips

If you want to store single pieces of information use an array. If your data is better described as a pair, then use a Hash.

## Examples

1. You want to store the names of all the students in Ada, class of C14.

```ruby
names = ["Riley", "Sam", "Alex"]
```

2. You want to store the names and ages of all the students in Ada, class of C14.

```ruby
# assuming no repeated names
# student name is the key
# student age is the value
c14 = {Riley: 29, Sam: 42, Alex: 29}
```

3. You want to store the names, ages, and favorite colors of all the students in Ada, class of C14.

```ruby
# assuming no repeated names
# student name is the key
# value is a hash containing key, value pairs
c14 = {
  Riley: {age: 29, color: "blue"}, 
  Sam: {age: 42, color: "yellow"}, 
  Alex: {age: 29, color: "blue"}
}
```

	You may also consider storing hashes with individual people's information inside of an array

```ruby
# c14 is an array of 3 hashes
# each hash has information on a single person
# the keys for each hash are name, age, and color
c14 = [
  {
    name: "Riley",
    age: 29,
    color: "blue"
  },
  {
    name: "Sam",
    age: 42,
    color: "yellow"
  },
  {
    name: "Alex",
    age: 29,
    color: "blue"
  }
]
```

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 7c3036ea-c58e-4830-ab85-4932092fd821
* title: First Element of an Array
* points: 1
* topics: arrays

##### !question

The first element of an array must start with index/key...

##### !end-question

##### !options

* first
* 0
* -1
* It could be almost anything
  
##### !end-options

##### !answer

* 0

##### !end-answer

<!-- other optional sections -->
##### !hint

Remember that arrays are ordered collections

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Arrays always start at 0

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: b61e7559-de66-43e6-99dd-d1df0e0e8500
* title: Hashes Start with
* points: 1
* topics: Hashes

##### !question

A hash must start with index/key...

##### !end-question

##### !options

* first
* 0
* -1
* It could be almost anything

##### !end-options

##### !answer

* Anything

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 9421baf7-827d-4e5a-b8bc-440c5b61fe03
* title: Nested Hashes
* points: 1
* topics: Hashes

##### !question

This is an example of a...

```
c14 = {
  Riley: {age: 29, color: "blue"}, 
  Sam: {age: 42, color: "yellow"}, 
  Alex: {age: 29, color: "blue"}
}
```

##### !end-question

##### !options

* hash of hashes
* array of hashes
* hash of arrays
* pizza

##### !end-options

##### !answer

* hash of hashes

##### !end-answer

<!-- other optional sections -->
##### !hint

What do the outside curly braces indicate?  What are the values paired with each key?

##### !end-hint

<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

This is a hash of hashes.  It's a hash with each value in the key-value pair being another hash.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: c1f8e8f7-af2e-4460-8b0b-a86240ae8a69
* title: Nested Hashes
* points: 1
* topics: Hashes, Arrays

##### !question

This is an example of a...

```
c14 = [
  {
    name: "Riley",
    age: 29,
    color: "blue"
  },
  {
    name: "Sam",
    age: 42,
    color: "yellow"
  },
  {
    name: "Alex",
    age: 29,
    color: "blue"
  }
]
```

##### !end-question

##### !options

* hash of hashes
* array of hashes
* hash of arrays
* pizza

##### !end-options

##### !answer

* array of hashes

##### !end-answer

<!-- other optional sections -->
##### !hint

What do the square brackets indicate?  What are the values paired with each element?

##### !end-hint

<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

This is an array of hashes.  It's an array with each element being a hash.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


## Resources

* [Ada Arrays vs Hashes Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=2f21e9e5-54fb-4e2a-a79d-fe72bedc10d9)