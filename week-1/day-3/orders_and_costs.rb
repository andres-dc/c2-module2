class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.inject(0) do |total_cost, order|
      total_cost + order.keys.inject(0) { |cost, i| cost + @menu[i] * order[i] }
    end
  end
end

rest1 = Restaurant.new({ :rice => 12, :noodles => 5 })
rest2 = Restaurant.new({ :rice => 10, :noodles => 6 })

p rest1.cost({ :rice => 2, :noodles => 1 }) # => 29
p rest2.cost({ :rice => 1, :noodles => 3 }, { :rice => 4, :noodles => 2 }) # => 80
