# frozen_string_literal: true

class WaterBottle
  def initialize(color, material)
    @color = color
    @material = material
  end

  def drink
    puts "Drink from your #{@color} #{@material} bottle."
  end
end

water_container = WaterBottle.new(:blue, :metal)
water_container.drink

class Backpack
  def initialize(color)
    @color = color
    @dirty = false
  end

  def dirty!
    if @dirty
      puts "Not awesome."
    else
      @dirty = true
      puts "Awesome!"
    end
  end
end

backpack = Backpack.new (:black)
backpack.dirty!
backpack.dirty!

class Mouse
  def initialize(brand)
    @brand = :brande
    @lights = false
  end

  def lights!
    if !@lights
      puts "Good! They are distracting."
    end
  end
end

mouse = Mouse.new (:steelseries)
mouse.lights!
