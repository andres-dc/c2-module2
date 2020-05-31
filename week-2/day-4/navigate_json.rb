require 'json'

hash = JSON.parse(File.read('json.json'))

def display_json(hash)
  puts "Our squad is called #{hash["squadName"]}"
  puts "We are from #{hash["homeTown"]}"
  puts "Our team started back in #{hash["formed"]}"
  puts "Our members are:"
  puts "Our team started back in #{hash["formed"]}"

  hash["members"].each do |hero|
    powers = "  - Superpowers: " + hero["powers"][0..-2].join(', ') + " and " + hero["powers"][-1]

    puts "- #{hero["name"]}"
    puts "  - Age: #{hero["age"]}"
    puts powers
  end
end

display_json(hash)
