require './absolute_sum'

describe "#absolute_sum" do
  it "returns the absolute sum of two number" do
    expect(absolute_sum(1, -3)).to eql(2)
    expect(absolute_sum(0, -1)).to eql(1)
    expect(absolute_sum(1, 3)).to eql(4)
  end
end
