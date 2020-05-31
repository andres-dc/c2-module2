require 'json'

json = JSON.parse(File.read('read_json.json'))

Task = Struct.new(:task, :who, :dueDate, :done) do |c|
  def print
    puts "#{task}"
    puts "#{who}"
    puts "#{dueDate}"
    puts "#{done}"
  end
end

json.each { |j| Task.new(j["task"], j["who"], j["dueDate"], j["done"]).print }
