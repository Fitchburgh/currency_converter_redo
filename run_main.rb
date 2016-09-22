require_relative 'currency'
require_relative 'currency_converter'
require_relative 'data_structures'
require_relative 'global_methods'



def main

  def code_convert(current, code_symbols)
    current = current.upcase
    code_symbols = {
      'EUR' => '€',
      'USD' => '$',
      'JPY' => '¥'
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
  code_symbols = {
    'EUR' => '€',
    'USD' => '$',
    'JPY' => '¥'
  }
  conversion_rates = {
    '$' => {
      '€' => 0.894726,
      '¥' => 101.818,
      '$' => 1
    },
    '€' => {
      '$' => 1.11763,
      '¥' => 113.774,
      '€' => 1
    },
    '¥' => {
      '$' => 0.00982184,
      '€' => 0.00879,
      '¥' => 1
    }
  }

  puts "Please enter currency symbol or code you would like to convert: "
  user_code = gets.chomp
  puts "Please enter the amount you would like to convert"
  user_amount = gets.chomp.to_f

  what_to_convert = Currency.new(user_code, user_amount)
  what_to_convert.amount #I don't understand why this isn't printing the user_code or amount.
  what_to_convert.currency_code
  converter_object = CurrencyConverter.new

  puts "What currency would you like to convert to: "
  desired_code = gets.chomp

  final_desired_code = desired_code.code_convert(desired_code, code_symbols)
  puts "#{what_to_convert.currency_code}what to convert, and #{final_desired_code} desired code"
  final_amount = converter_object.conversion(what_to_convert.currency_code, final_desired_code, user_amount)

  puts "#{final_amount} will be your cash total after conversion!"
end

main if __FILE__ == $PROGRAM_NAME
