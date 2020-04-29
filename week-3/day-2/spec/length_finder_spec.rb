require './length_finder'

describe "#length_finder" do
  it "finds the length of string elements inside a array" do
    expect(length_finder(['asdf', 'qwerty', 'zserfbg'])).to eql([4, 6, 7])
    expect(length_finder(['123'])).to eql([3])
    expect(length_finder(['a', 'b', 'c'])).to eql([1, 1, 1])
  end
end
