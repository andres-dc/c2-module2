require 'time'

def format_date(date)
  date.strftime("%B %d, del %Y")
end

date1 = Time.new(2020, 4, 10)
date2 = Time.new(1951, 6, 29)
p format_date(date1) # => April 10, del 2020
p format_date(date2) # => June 29, del 1951
