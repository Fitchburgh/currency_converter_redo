require_relative "../currency"
require_relative "../currency_converter"
require_relative "../run_main"
require_relative "../data_structures"

describe Currency  do
  it "create a new currency obj in currency class" do
    currency = Currency.new('USD', 5)
    expect(currency).to be_a(Currency)
  end
end

describe Currency do
  it "one currency obj = another of exact arguments" do
    a = Currency.new('$5')
    b = Currency.new("$", 5)
    expect(a == b)

  end
end
