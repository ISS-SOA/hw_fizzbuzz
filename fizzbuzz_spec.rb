# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/unit' # see https://github.com/minitest/minitest-rg/issues/17
require 'minitest/rg'
require './fizzbuzz'

FIZZBUZZ = %w[
  1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz 16 17 Fizz 19 Buzz
  Fizz 22 23 Fizz Buzz 26 Fizz 28 29 FizzBuzz
].freeze

describe 'Rules of Fizz Buzz' do
  large_n = 15_000
  result = fizzbuzz(large_n)
  rand_int = Random.srand % 1000

  it 'should recognize multiples of 3' do
    rand3 = rand_int - (rand_int % 3)
    word = result[rand3 - 1]
    _(word).must_include 'Fizz'
  end

  it 'should recognize multiples of 5' do
    rand5 = rand_int - (rand_int % 5)
    word = result[rand5 - 1]
    _(word).must_include 'Buzz'
  end

  it 'should recognize multiples of 15' do
    rand15 = rand_int - (rand_int % 15)
    word = result[rand15 - 1]
    _(word).must_equal 'FizzBuzz'
  end

  it 'should recognized numbers not multiples of 3, 5, 15' do
    rand_not15 = rand_int - (rand_int % 15) + 1
    word = result[rand_not15 - 1]
    _(word.to_i).must_equal rand_not15
  end
end

describe 'Correct return types and blocks' do
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
