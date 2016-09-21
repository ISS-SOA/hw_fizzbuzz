## write your fizzbuzz method in this file
# see http://en.wikipedia.org/wiki/Fizz_buzz for details on FizzBuzz game

# frozen_string_literal: true

def fizzbuzz(count, &block)
  sequence = (1..count).map { |turn| fizzbuzzify(turn) }
  sequence.each(&block) if block
  sequence
end

# utilities
def fizzbuzzify(turn)
  case turn
  when divisible_by?(15) then 'FizzBuzz'
  when divisible_by?(5)  then 'Buzz'
  when divisible_by?(3)  then 'Fizz'
  else turn
  end
end

def divisible_by?(divisor)
  -> (dividend) { (dividend % divisor).zero? }
end
