require_relative "../currency"
require_relative "../currency_converter"
require_relative "../run_main"
require_relative "../data_structures"

describe Currency do
  it "create a new currency obj in currency class" do
    currency = Currency.new('USD', 5)
    expect(currency).to be_a(Currency)
  end
end

describe Currency do
  it "one currency obj = another of exact arguments" do
    a = Currency.new('$5')
    b = Currency.new('USD', 5)
    expect(a == b)
  end

  it "does not equal curr obj to another type" do
    a = Currency.new('$5')
    b = Currency.new('¥‎5')
    expect(a.currency_code).not_to equal(b.currency_code)
  end

  it "subtracts currency" do
    c = Currency.new('usd', 5)
    d = Currency.new('$5')
    expect(c.amount.to_f - d.amount.to_f).to equal(0.to_f)
  end

  it "multiplies currency" do
    c = Currency.new('uSd', 5)
    d = Currency.new('$5')
    expect(c.amount.to_f * d.amount.to_f).to equal(25.to_f)
  end

  it "adds currency" do
    c = Currency.new('USD', 5)
    d = Currency.new('$5')
    expect(c.amount.to_f + d.amount.to_f).to equal(10.to_f)
  end
end

describe CurrencyConverter do
  it "Needs to create an object in that class" do
    g = CurrencyConverter.new
    expect(g).to be_a(CurrencyConverter)
  end

  it "needs to convert 5 USD to x Yen" do
    q = Currency.new('$5')
    expect(q.conversion).to equal(Currency.new('¥‎', 509.09))
  end
end
