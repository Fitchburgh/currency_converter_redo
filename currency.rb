
class CannotAddThoseCurrencies < StandardError
end
# Class to create new currency options to prepare to be converted
class Currency
  attr_accessor :currency_code, :amount
  def initialize(*args)
    @currency_code, @amount = *args
    @code_symbols = {
      'EUR' => '€',
      'USD' => '$',
      'JPY' => '¥‎'
    }
    tomato = @currency_code.upcase
    puts "#{tomato}"
    if @amount == nil
      @amount = @currency_code[1..-1]
      @currency_code = @currency_code[0]
    end
    puts "#{@currency_code} #{@amount}"
    if @code_symbols.include? tomato
      @code_symbol = @code_symbols[tomato]
      puts "Am I here? #{@code_symbol}"
    end
  end
  def ==(other)
    @currency_code == other.currency_code && @amount == other.amount
  end

  # this function is going to add two amounts together of the same currency_code
  def +(other)
    if @currency_code == other.currency_code && @currency_code != nil
      true
    else
      begin
      raise CannotAddThoseCurrencies
      rescue
      end
      puts 'error test'
    end
  end
end
