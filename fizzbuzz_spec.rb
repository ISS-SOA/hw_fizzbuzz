require 'minitest/autorun'
require './fizzbuzz'

FIZZBUZZ_30 = [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11,
               'Fizz', 13, 14, 'FizzBuzz', 16, 17, 'Fizz', 19, 'Buzz', 'Fizz',
               22, 23, 'Fizz', 'Buzz', 26, 'Fizz', 28, 29, 'FizzBuzz']

describe 'Fizz buzz tests' do
  it 'should return an array of numbers and strings' do
    fizzbuzz(30).must_equal FIZZBUZZ_30
  end

  it 'should properly execute a block' do
    str = ''
    result = fizzbuzz(20) { |item| str << "#{item}-" }
    result.must_equal FIZZBUZZ_30[0..19]
    str.must_equal(FIZZBUZZ_30[0..19].map(&:to_s).join('-') + '-')
  end
end
