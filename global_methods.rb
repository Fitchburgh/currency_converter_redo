
def code_convert(current, code_symbols)
  current = current.upcase
  code_symbols = {
    'EUR' => '€',
    'USD' => '$',
    'JPY' => '¥‎'
  }
  if code_symbols.include? current
    current = code_symbols[current]
  elsif !code_symbols.include? current
    begin
    raise CannotConvertThatCurrency
    rescue
    end
    puts "convert error"
  end
end
