# Mission FizzBuzz

*Instructions: Either git clone this repo onto your machine, or download as a zip file (see 'Clone or download' button). Do NOT fork this repo!*

---

*The basic Fizz buzz problem is a very popular interview question for programming jobs, to weed out novices.  The problem seems quite easy, but it can confuse programmers who try to overthink it. Take a look at [what the founder of StackOverflow had to say about this game](https://blog.codinghorror.com/why-cant-programmers-program/).*


Fizz buzz is a simple children’s game where everyone sits in a circle, and each person takes a turn saying numbers in increasing order. The rules are:

- First person starts the game by saying “1”
- Next person must say one number greater (so second person says “2”)
- If a person’s number is divisible by 3, they have to say “Fizz” instead of their number
- If a person’s numbers is divisible by 5, they have to say “Buzz” instead of their number
- If a person’s numbers is divisible by both 3 and 5, they have to say “FizzBuzz”

So the game creates a sequence that looks like this:

`1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, ...`


## 1. Fizzbuzz Function
You must write a `fizzbuzz` method in Ruby that produces the items (numbers/words) of the Fizz buzz sequence. Your `fizzbuzz` method should take the following parameters:
- `size` (number until which to generate the sequence)
- optional block (to determine what to do with each item)

and the method’s return value should be:
- an array of Fizz buzz items upto the number specified; use Integers and Strings as appropriate

## 2. Try and Test

Try writing a very simple version of the algorithm first, and make sure everything works.  Only make your code ‘clean’ (not ‘clever’) after you have got it working! Remember always that the code in our class is for other programmers to read.

Here are some test cases and sample outputs that you can try in a REPL (like `irb`/`pry`):

```
> fizzbuzz(5)
=> [1, 2, "Fizz", 4, "Buzz"]

> fizzbuzz(20) { |item| print "#{item}-" }
1-2-Fizz-4-Buzz-Fizz-7-8-Fizz-Buzz-11-Fizz-13-14-FizzBuzz-16-17-Fizz-19-Buzz-
=> [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, "Buzz"]

> fizzbuzz(5).select { |item| item.is_a? Fixnum }
=> [1, 2, 4]
```

Take a look at the tests written for you in `fizzbuzz_spec.rb`. While coding, run automated tests on your code from command line, in the directory with all the files:
```
$ bundle install
(only need to run this once; bundle should report success)

$ ruby fizzbuzz_spec.rb
```
The tests should fail as you are developing your function. But you should see the tests start to pass while you are successfully developing this assignment.

## 3. Coding Practices

Let's put together all the good programming practices that we discussed in class:

- **REPL**: Use `irb`/`pry` to try each step as you are coding
- **Tests**: continuously test your code as you write it
- **Idiomatic code**:
  - “No more for loops!”: use functional idioms for iteration (map/reduce/select/each/etc.)
  - make sure your code has no `rubocop` violations (ask us about any unusual violations)
- **Readability**: ask others to review your code or suggest improvements – even publicly on our class Slack!