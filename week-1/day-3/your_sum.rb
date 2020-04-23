class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    @array.reduce(initial_value) do |tot, num|
      block_given? ? tot + yield(num) : tot + num
    end
  end
end

my_array = MyArray.new([1, 2, 3])
p my_array.sum # => 6
p my_array.sum(10) # => 16
p my_array.sum(0) { |n| n**2 } # => 14
p my_array.sum(1) { |n| n * 2 } # => 13
