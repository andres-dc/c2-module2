# frozen_string_literal: true

class Color
  attr_reader :r, :g, :b
  def initialize(red, green, blue)
    @r = red
    @g = green
    @b = blue
  end

  def brightness_index
    (299 * @r + 587 * @g + 114 * @b) / 1000
  end

  def brightness_difference(second_clr)
    (brightness_index - second_clr.brightness_index).abs
  end

  def hue_difference(second_clr)
    ((r - second_clr.r).abs + (g - second_clr.g).abs + (b - second_clr.b).abs)
  end

  def enough_contrast?(second_clr)
    brightness_difference(second_clr) > 125 && hue_difference(second_clr) > 50
  end
end

color1 = Color.new(64, 98, 41)
color2 = Color.new(201, 14, 152)
color3 = Color.new(1, 200, 90)
color4 = Color.new(113, 213, 85)

p color1.brightness_difference(color2)
p color3.hue_difference(color1)
p color2.enough_contrast?(color4)
