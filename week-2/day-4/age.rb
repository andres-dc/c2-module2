require 'time'

def age?(year, month, day)
  now = Time.now.utc
  dob = Time.parse("#{year}-#{month}-#{day}").utc
  age = now.year - dob.year
  cur = ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  age - cur
end

age?(1994, 2, 24) # Should return 26
age?(1985, 5, 11) # Should return 34
age?(1985, 4, 23) # Should return 35
