# frozen_string_literal: true

## write your fizzbuzz method in this file
# see http://en.wikipedia.org/wiki/Fizz_buzz for details on FizzBuzz game

def fizzbuzz(count, &block)
  sequence = (1..count).map { |turn| fizzbuzzify(turn) }
  sequence.each(&block) if block
  sequence
end

# utilities
def fizzbuzzify(turn)
  case turn
  when divisible_by?(3, 5) then 'FizzBuzz'
  when divisible_by?(3)    then 'Fizz'
  when divisible_by?(5)    then 'Buzz'
  else turn
  end
end

def divisible_by?(*divisors)
  lambda do |dividend|
    divisors.map { |divisor| (dividend % divisor).zero? }.all?
  end
end
