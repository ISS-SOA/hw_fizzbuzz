# Mission FizzBuzz

## 1. Description of FizzBuzz

FizzBuzz is a simple children’s game where everyone sits in a circle, and each person takes a turn saying numbers in increasing order. The rules are:

- First person starts the game by saying “1”
- Next person must say one number greater (so second person says “2”)
- If a person’s number is divisible by 3, they have to say “Fizz” instead of their number
- If a person’s numbers is divisible by 5, they have to say “Buzz” instead of their number
- If a person’s numbers is divisible by both 3 and 5, they have to say “FizzBuzz”

So the game creates a sequence that looks like this:

`"1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16", "17", "Fizz", "19", ...`

This basic FizzBuzz problem is a very popular interview question for programming jobs, to weed out novices.  The problem seems quite easy, but it can confuse programmers who try to overthink it ([take a look at a blog article about this game](https://blog.codinghorror.com/why-cant-programmers-program/)).

## 2. Setup Instructions

Either git clone this repo onto your machine, or download as a zip file (see 'Clone or download' button). *Do NOT fork this repo!*

In your working folder, use the `bundle` command at the Unix shell to install all the necessary gems from the `Gemfile.lock` file:

```sh
$ bundle install
(You only need to run this once; bundle should report success)
```

## 3. Running Tests

Take a look at the tests written for you in `fizzbuzz_spec.rb`. Run the tests once before you start coding to confirm that all three tests fail!

```sh
$ ruby fizzbuzz_spec.rb
(should get three error messages here before you have written any code)
```

While coding, keep running the automated tests on your code from the command line to see if you can pass the tests one-by-one. When all the tests pass, you know that you have a fully working version of FizzBuzz!

## 4. Implementing Fizzbuzz

In the `fizzbuzz.rb` file, you must write a `fizzbuzz` method in Ruby that produces the items of the FizzBuzz sequence as strings. Your `fizzbuzz` method should take the following parameters:

- `size` (number until which to generate the sequence)
- optional block (specifies how to decorate each item if desired)

and the method’s return value should be:

- an array of FizzBuzz strings upto the number specified  (e.g., `["1", "2", "Fizz", ...]`)
- each item of the array might be decorated by a given block (e.g., `["-1-", "-2-", "-Fizz-", ...]`)

Try writing a very simple version of the algorithm first, and make sure everything works.

Here are some test cases and sample outputs that you can try in `IRB`:

```ruby
> fizzbuzz(15)
=> ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]

> fizzbuzz(10) { |item| "-#{item}-" }
=> ["-1-", "-2-", "-Fizz-", "-4-", "-Buzz-", "-Fizz-", "-7-", "-8-", "-Fizz-", "-Buzz-"]
```

## 3. Coding Practices

Let's put together all the good programming practices that we discussed in class:

- **Tests**: Continuously run tests before and during coding
- **REPL**: Use `irb`/`pry` to try each step as you are coding
- **Idiomatic code**: Once you have a working version of your code, you can try to make it more idiomatic and readable:
  - “No more for loops!”: use functional iteration instead (map/reduce/select/each/etc.)
  - Make sure your code has no `rubocop` violations (ask us about any unusual violations)
- **Feedback**: Feel free to ask your classmates to help with your implementation, or review your code to suggest improvements