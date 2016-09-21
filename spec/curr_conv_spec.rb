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
    expect(a).to equal(b)
  end

  it "does not equal curr obj to another type" do
    a = Currency.new('$5')
    b = Currency.new('¥‎5')
    expect(a).not_to equal(b)
  end

describe "puts error message" do
  it 'says error message' do
    @currency_code = "hi"
    other.currency_code = "hello"
    STDOUT.should_receive(:puts).with('error test')
  end
end

  # it "" do
  #   a = Currency.new('$5')
  #   b = Currency.new('$15')
  #   expect(a + b).to equal(20)
  # end
end
