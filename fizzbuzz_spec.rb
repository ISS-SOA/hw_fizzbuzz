# frozen_string_literal: true

require 'minitest/autorun'
require './fizzbuzz'

FIZZBUZZ = %w[
  1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz 16 17 Fizz 19 Buzz
  Fizz 22 23 Fizz Buzz 26 Fizz 28 29 FizzBuzz
].freeze

describe 'Fizz buzz tests' do
  it 'should return an array of strings' do
    _(fizzbuzz(30)).must_equal FIZZBUZZ
  end

  it 'should properly execute a block' do
    result = fizzbuzz(30) { |item| "-#{item}-" }
    desired = FIZZBUZZ.map { |fb| "-#{fb}-" }
    _(result).must_equal(desired)
  end

  it 'should return results for large requests as well' do
    large_n = 5000
    result = fizzbuzz(large_n)
    _(result.length).must_equal large_n
  end
end
