def lunch_orders(orders)
  out = {}

  orders.each do |x|
    !out[x[1]] ? out[x[1]] = 1 : out[x[1]] += 1
  end

  out.each { |x| puts "#{x[0]} -> #{x[1]}" }
end
