# frozen_string_literal: true

class Square
  def initialize(area)
    @area = area
  end

  def area
    @area**2
  end
end

square_one = Square.new(10)
puts square_one.area # Logs: 100
