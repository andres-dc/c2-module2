puts 'Enter the amount of months: '
months = gets.chomp.to_i

puts 'Enter the amount of money: '
money = gets.chomp.to_f

puts 'Enter the interest rate: '
interest = gets.chomp.to_f

def interest(months, money, interest)
  i = 1
  while i <= months
    money += (money * interest / 100)
    i += 1
  end
  money.round(2)
end

p interest(months, money, interest)
