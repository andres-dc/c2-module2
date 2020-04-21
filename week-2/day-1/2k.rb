class String
  def to_2000
    self.each_char.with_index { |c, i| print i.odd? ? c.downcase : c.upcase }
    puts
  end
end

"Hola, como estas?".to_2000 # => HoLa, CoMo EsTaS?
"Porque escribes de esa manera?".to_2000 # => PoRqUe EsCrIbEs De EsA mAnEra?
"What is wrong with you?".to_2000 # => WhAt Is WrOnG wItH yOu?
