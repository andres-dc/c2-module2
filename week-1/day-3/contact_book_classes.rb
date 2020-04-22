# frozen_string_literal: true

class Contact
  attr_accessor :name, :num
  def initialize(name, num)
    @name = name
    @num = num
  end
end

class ContactBook
  attr_accessor :contacts

  def initialize
    @contacts = { Andres: '22', Gretzky: '99', Lemieux: '66' }
  end

  def add(contact)
    @contacts[contact.name] = contact.num
  end

  def update(name, num)
    @contacts[name] = num
  end

  def display
    @contacts.each { |name, num| puts "Name: #{name} - Number: #{num}" }
  end

  def delete(name)
    @contacts.delete(name)
  end
end

contact = ContactBook.new

d_sedin = Contact.new('D. Sedin', '33')
contact.add(d_sedin)
contact.display
