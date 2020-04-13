def calculate_pressure(chemical_amount, temperature, volume)
  8.314 * chemical_amount * temperature / volume
end

p calculate_pressure(5, 500, 2) # Returns 10392.5
