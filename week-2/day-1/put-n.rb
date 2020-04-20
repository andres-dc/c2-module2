def put_n(str, t)
  if !(t.is_a? Integer and t >= 1)
    raise ArgumentError.new("Fail")
  else
    t.times { puts str }
  end
end

put_n("This will be printed 5 times!", 5)
put_n("This will be printed 5 times!", 3.5)
put_n("This will be printed 5 times!", -2)
