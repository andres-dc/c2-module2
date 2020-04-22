# frozen_string_literal: true

puts 'What is your weight?'
weight = gets.chomp.to_f

puts 'What is your height (in meters)?'
height = gets.chomp.to_f

bmi = weight / (height**2)

puts format('Your Body Mass Index is %<bmi>.2f', bmi: bmi)
