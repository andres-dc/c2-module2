# frozen_string_literal: true

s = 'Category, (Symbol) Price, Stock, Amount, Name
Sporting Goods, USD 49.99, true, 10, Football
Sporting Goods, PEN 9.99, true, 3, Baseball
Sporting Goods, ARS 29.99, false, 0, Basketball
Electronics, PEN 99.99, true, 5, iPod Touch
Electronics, USD 399.99, false, 0, iPhone 5
Electronics, PEN 199.99, true, 2, Nexus 7'

def to_bool(bool)
  bool == 'true'
end

def arr_to_hash(arr)
  [
    [:category, arr[0]],
    [:symbol, arr[1]],
    [:price, arr[2]],
    [:stock, arr[3]],
    [:amount, arr[4]],
    [:name, arr[5]]
  ].to_h
end

def str_to_hash(str)
  # convert to array of strings
  str = str
        .split(/[\n]/)[1..-1]
        .map { |el| el.split(', ') }

  # convert to booleans position [2] of each sub-array
  str = str.each { |el| el[2] = to_bool(el[2]) }

  # separate position [1] of each sub-array
  str = str.each do |el|
    el[1] = el[1].split
    temp = el[1][1].to_f
    el[1] = el[1][0]
    el.insert(2, temp)
  end

  # convert amounts to integers
  str = str.each { |el| el[4] = el[4].to_i }

  str = str.map { |el| arr_to_hash(el) }
end

def exchange(sym, prc)
  return prc *= 3 if sym == 'PEN'
  return prc *= 40 if sym == 'ARS'
  return prc if sym == 'USD'
end

def inventory_price(arr)
  total = 0

  arr.each do |el|
    total += (el[:amount] * exchange(el[:symbol], el[:price]))
  end

  '%.2f' % total
end

items = str_to_hash(s)

p "USD #{inventory_price(items)}" # => "USD 3289.60"
