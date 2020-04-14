def random(arr, n)
  out = []

  n.times { out << arr.shuffle![0] }

  out
end
