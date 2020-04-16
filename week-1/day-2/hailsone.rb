print "Input a positive number: "
x = gets.chomp.to_i


# continues execution if 1 is inputed
def hailstone1(x)
  t = 0

  if x == 1
    print "#{x} "
    x = (x * 3) + 1
    t += 1
  end

  print "#{x} "

  while x != 1 do
    x.even? ? x = x / 2 : x = (x * 3) + 1
    print "#{x} "
    t += 1
  end

  puts
  puts "HAILSTONE 1 - Number of steps: #{t}"
end

# stops execution if 1 is inputed
def hailstone2(x)
  t = 0
  
  if x == 1
    puts "1"
    puts "HAILSTONE 2 - Number of steps: 0"
    return
  end
  
  print "#{x} "

  while x != 1 do
    x.even? ? x = x / 2 : x = (x * 3) + 1
    print "#{x} "
    t += 1
  end

  puts
  puts "HAILSTONE 2 - Number of steps: #{t}"
end

hailstone1(x)
hailstone2(x)
