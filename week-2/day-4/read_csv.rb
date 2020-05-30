require 'csv'

# download the file

# require 'open-uri'
# download = open('https://people.sc.fsu.edu/~jburkardt/data/csv/grades.csv')
# IO.copy_stream(download, 'grades.csv')

def str_helper(str)
  str.gsub(/\W/, '')
end

def read_csv(filename)
  hash = {}
  CSV.foreach(filename, :quote_char => '|') do |row|
    name = str_helper(row[1]) + ' ' + str_helper(row[0])
    grade = row[3..7].map { |el| el.to_f }.reduce(:+) / 5
    hash[name] = grade
  end

  3.times do |i|
    puts "#{i + 1} - #{hash.keys.sort.reverse[i]} with a final grade of #{hash.values.sort.reverse[i]}"
  end
end

read_csv('grades.csv')
