file = File.new('write_text.txt', 'a+')

file.puts('New', 'Line', [1, 2, 3])

File.open('write_text.txt').each { |line| puts line }
