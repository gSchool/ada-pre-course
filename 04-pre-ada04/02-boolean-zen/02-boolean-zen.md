# Boolean Zen

_Boolean Zen is a phrase used to describe if code using boolean values is written in the most concise way possible. Boolean Zen is considered good programming style._

<iframe src="https://adaacademy.hosted.panopto.com/Panopto/Pages/Embed.aspx?id=1d4f3740-edc2-469a-ac3c-bf980dd649cf&autoplay=false&offerviewer=true&showtitle=true&showbrand=false&start=0&interactivity=all" style="width: 720px; height: 405px; border: 1px solid #464646;" allowfullscreen allow="autoplay"></iframe>

## Tips

**You should never compare to true or false in an if statement, while loop, or until loop.**

## Examples

```ruby
# not boolean zen
if width > 0 && width < 100
  puts true
else
  puts false
end

# boolean zen
puts width > 0 && width < 100
```

Take a look at the code above, we simplified the code to simply output the result of the conditional rather than having to write an entire if statement.  The conditional `width > 0 && width < 100` will result in `true` or `false` and we can simply print that value.


```ruby
# not boolean zen
correct = false
until correct == true
  # statement(s)
end

# boolean zen
correct = false
until correct
  # statement(s)
end
```

The code above is a good example of Boolean Zen because we do not need the `== true` component of the conditional, `correct` is either truthy or falsy and that can be put in the conditional space of the loop.  We don't need to compare it to true.  The inverse is true with the `until` loop.

We can see another example below.

```ruby
# not boolean zen
not_correct = true
while not_correct == true
  # statement(s)
end

# boolean zen
not_correct = true
while not_correct
  # statement(s)
end
```

## Resources

* [Ada Boolean Zen Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=1d4f3740-edc2-469a-ac3c-bf980dd649cf) (2:55)
