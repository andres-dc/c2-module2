require './palindrome'

describe "#palindrome" do
  it "returns true if the word is a palindrome" do
    expect(palindrome('somos')).to eql(true)
    expect(palindrome('somos,')).to eql(true)
    expect(palindrome('no somos')).to eql(false)
    expect(palindrome('Somos , SomOs')).to eql(true)
  end
end
