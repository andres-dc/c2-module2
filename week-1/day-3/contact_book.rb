# frozen_string_literal: true

contacts = {
  Andres: 22,
  Gretzky: 99,
  Lemieux: 66
}

def print_info(contacts)
  contacts.each { |k, v| puts "Name: #{k} - Number: #{v}" }
end

puts 'What would you like to do?'
puts "-- Type 'add' or 'a' to add a contact."
puts "-- Type 'update' or 'u' to update a contact."
puts "-- Type 'display' or 'd' to display all contacts."
puts "-- Type 'delete' or 'del' to delete a contact."

choice = gets.chomp.downcase

case choice
when 'add' && 'a'
  puts 'Contact name: '
  name = gets.chomp

  if contacts[name.to_sym].nil?
    puts 'Number: '
    number = gets.chomp
    contacts[name.to_sym] = number.to_i
    puts "Name: #{name} - Number: #{number}"
  else
    puts "That contact already exists with number #{contacts[name.to_sym]}"
  end

when 'update' && 'u'
  puts 'Contact name: '
  name = gets.chomp

  if contacts[name.to_sym].nil?
    puts 'Contact not found.'
  else
    puts 'New number: '
    number = gets.chomp
    contacts[name.to_sym] = number.to_i
    puts "Name: #{name} - Number: #{number}"
  end

when 'display' && 'd'
  print_info(contacts)

when 'delete' && 'del'
  puts 'Contact name: '
  name = gets.chomp

  if contacts[name.to_sym].nil?
    puts 'Contact not found.'
  else
    contacts.delete(name.to_sym)

    print_info(contacts)
  end
end
