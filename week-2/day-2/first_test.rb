# frozen_string_literal: true

def assert_equal(expected, actual, method)
  if expected == actual
    puts "#{method} returned #{actual} as expected."
  else
    puts "KAPUTT! #{method} did not return #{expected} as expected, but actually returned #{actual}."
  end
end

def map(array)
  result = []
  array.each do |el|
    result << yield(el)
  end
  result
end

assert_equal([1, 2, 4], [1, 2, 4], map([1, 2, 4]))
