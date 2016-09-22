
def code_convert(current)
  current = current.upcase
  code_symbols = {
    'EUR' => '€',
    'USD' => '$',
    'JPY' => '¥‎'
  }
  if code_symbols.include? current
    current = code_symbols[current]
  else
    raise CannotConvertThatCurrency
  end
end
