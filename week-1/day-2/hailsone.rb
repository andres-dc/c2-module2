$seq = []

def hailstone(x)
  if x.even?
    $seq.push(x)
    hailstone (x / 2)
  elsif x.odd? && $seq.length.zero?
    $seq.push(x)
    hailstone ((x * 3) + 1)
  elsif x == 1
    $seq.push(x)
    puts "Number of steps: #{$seq.length}"
  end
  $seq
end
