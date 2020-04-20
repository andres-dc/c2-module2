def put_n(str, t)
  raise ArgumentError.new("Number is negative") if !(t >= 1)
  raise ArgumentError.new("Number is not an integer") if !(t.is_a? Integer)
    
  t.times { puts str }
end

put_n("This will be printed 5 times!", 5)
put_n("This will be printed 5 times!", -2)
put_n("This will be printed 5 times!", 3.5)
