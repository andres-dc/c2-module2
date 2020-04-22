# frozen_string_literal: true

print 'Input a positive number: '
num = gets.chomp.to_i

# helper function
def hailoop(num, count)
  while num != 1
    num = num.even? ? num / 2 : (num * 3) + 1
    print "#{num} "
    count += 1
  end
end

# continues execution if 1 is inputed
def hailstone1(num)
  count = 0

  if num == 1
    print "#{num} "
    num = (num * 3) + 1
    count += 1
  end

  print "#{num} "

  hailoop(num, count)

  puts
  puts "HAILSTONE 1 - Number of steps: #{count}"
end

# stops execution if 1 is inputed
def hailstone2(num)
  count = 0

  if num == 1
    puts '1'
    puts 'HAILSTONE 2 - Number of steps: 0'
    return
  end

  print "#{num} "

  hailoop(num, count)

  puts
  puts "HAILSTONE 2 - Number of steps: #{count}"
end

hailstone1(num)
hailstone2(num)
