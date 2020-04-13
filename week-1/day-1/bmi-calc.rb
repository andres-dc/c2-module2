puts "What is your weight?"
weight = gets.chomp.to_f

puts "What is your height?"
height = gets.chomp.to_f

bmi = weight / (height ** 2)

puts "Your Body Mass Index is #{'%.2f' % bmi}."
