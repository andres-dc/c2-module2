def put_n(str, t)
  raise ArgumentError.new("Number is negative") if t <= 0
  raise ArgumentError.new("Number is not an integer") if !(t.is_a? Integer)
    
  t.times { puts str }
end

def echo
  puts "What do you want to echo?"
  s = gets.chomp
  puts "How many times do you want to repeat it?"
  t = gets.chomp.to_i

  put_n(s, t)
  
rescue ArgumentError
  puts "I don't understand how many times do you want to echo the string!"
  retry
end

echo
