def sum_of_cubes(a, z)
  (Array (a..z).map { |x| x ** 3 }.reduce(:+))[0]
end
