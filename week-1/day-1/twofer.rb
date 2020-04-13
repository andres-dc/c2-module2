print 'Who? '
who = gets.chomp

def twofer(who)
  who.length.zero? ? "One for you, one for me." : "One for #{who}, one for me."
end
