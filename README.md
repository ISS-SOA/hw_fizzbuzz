# Mission FizzBuzz

*Instructions: Either git clone this repo onto your machine, or download as a zip file (see download options on right hand side)*

---

Fizz buzz is a simple children’s game where everyone sits in a circle, and each person takes a turn saying numbers in increasing order. The rules are:

- First person starts the game by saying “1”
- Next person must say one number greater (so second person says “2”)
- If a person’s number is divisible by 3, they have to say “Fizz” instead of their number
- If a person’s numbers is divisible by 5, they have to say “Buzz” instead of their number
- If a person’s numbers is divisible by both 3 and 5, they have to say “FizzBuzz”

So the game creates a sequence that looks like this:

`1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, ...`

You must write a `fizzbuzz` method in Ruby that produces the items (numbers/words) of the Fizz buzz sequence. Your fizzbuzz method should take the following parameters:
- `size` (number until which to generate the sequence)
- optional block (to determine what to do with each item)

and the method’s return value should be:
- an array of Fizz buzz items upto the number specified; use numbers and strings as appropriate

Try writing a very simple version of the algorithm first, and make sure everything works.  Only make your code ‘clean’ (not ‘clever’) after you have got it working! Remember always that the code in our class is for other programmers to read.

Here are some test cases and sample outputs:

```
> fizzbuzz(5)
=> [1, 2, "Fizz", 4, "Buzz"]

> fizzbuzz(20) { |item| print "#{item}-" }
1-2-Fizz-4-Buzz-Fizz-7-8-Fizz-Buzz-11-Fizz-13-14-FizzBuzz-16-17-Fizz-19-Buzz-
=> [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, "Buzz"]

> fizzbuzz(5).select { |item| item.is_a? Fixnum }
=> [1, 2, 4]
```

To run automated tests on your code, you may do the following from command line, in the directory with all the files:
```
$ bundle install
(only need to run this once; bundle should report success)

$ ruby fizzbuzz_spec.rb
Run options: --seed 13291

# Running:

..

Finished in 0.001224s, 1633.5438 runs/s, 2450.3157 assertions/s.

2 runs, 3 assertions, 0 failures, 0 errors, 0 skips

```

Historical note:  Fizz buzz used to be (maybe still is) a very popular interview question for programming jobs, to weed out novices.  The problem seems quite easy, but it can confuse programmers who try to overthink it.
