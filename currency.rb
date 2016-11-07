class CannotSubtractThoseCurrencies < StandardError
end

class CannotMultiplyThoseCurrencies < StandardError
end

class CannotAddThoseCurrencies < StandardError
end

class CannotConvertThatCurrency < StandardError
end

# Class to create new currency options to prepare to be converted
class Currency
  attr_accessor :currency_code, :amount

  def initialize(*args)
    @currency_code, @amount = *args
    @code_symbols = {
      'EUR' => '€',
      'USD' => '$',
      'JPY' => '¥'
    }
    @currency_code = @currency_code.upcase

    if @code_symbols.values.include?(@currency_code)
      @amount = @currency_code[1..-1].to_f
      curr_sym = @currency_code[0]
      @current_code = @code_symbols[curr_sym]
    end

    if @code_symbols.include? @currency_code
      @currency_code = @code_symbols[@currency_code]
    elsif !@code_symbols.include? @currency_code
      puts 'convert error'
      raise CannotConvertThatCurrency
    end
  end

  def ==(other)
    @currency_code == other.currency_code && @amount == other.amount
  end

  # this function is going to add two amounts together of the same currency_code
  def +(other)
    if @currency_code == other.currency_code && !@currency_code.nil
      @amount += other.amount.to_f
    else
      puts 'Addition error test'
      raise CannotAddThoseCurrencies
    end
  end

  def -(other)
    if @currency_code == other.currency_code && !@currency_code.nil
      @amount -= other.amount.to_f
    else
      puts 'Subtraction error test'
      raise CannotSubtractThoseCurrencies
    end
  end

  def *(other)
    if @currency_code == other.currency_code && !@currency_code.nil
      @amount *= other.to_f
    else
      puts 'Conversion error test'
      raise CannotMultiplyThoseCurrencies
    end
  end
end
