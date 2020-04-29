def red_color_detector(sample)
  n = 0

  sample.flatten(1).each do |x|
    if x[0] > 100 && x[0] / 4 > x[1] && x[0] / 4 > x[2]
      n += 1
    end
  end

  n
end
