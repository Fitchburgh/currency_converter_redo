# Class to create new currency options
class Currency
  def initialize(*args)
    @currency_code, @amount = *args
    if @amount == nil
      @amount = @currency_code[1..-1]
      @currency_code = @currency_code[0]
    end
  end
  def ==(other)
    return true if @currency_code == @currency_code && @amount == @amount
  end

  def +(other)
    self.Currency.new()
  end
end
