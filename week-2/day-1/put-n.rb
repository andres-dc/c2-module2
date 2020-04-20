def put_n(str, t)
  !(t.is_a? Integer and t >= 1) ?
    raise ArgumentError.new("Fail") :
    t.times { puts str }
end

put_n("This will be printed 5 times!", 5)
put_n("This will be printed 5 times!", 3.5)
put_n("This will be printed 5 times!", -2)
