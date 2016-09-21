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
