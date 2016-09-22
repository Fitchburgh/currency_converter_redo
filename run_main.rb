require_relative 'currency'
require_relative 'currency_converter'
require_relative 'data_structures'
require_relative 'global_methods'

def main
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

  # creating my class objects based on user inputs.
  what_to_convert = Currency.new(user_code, user_amount)
  converter_object = CurrencyConverter.new

  puts "What currency would you like to convert to: "
  desired_code = gets.chomp

  final_desired_code = code_convert(desired_code)
  puts "Reminder, you are converting from: #{what_to_convert.currency_code} to: #{final_desired_code} desired code"
  final_amount = converter_object.conversion(what_to_convert.currency_code, final_desired_code, user_amount)

  puts "#{final_amount.round(2)} (unrounded: #{final_amount}) will be your cash total after conversion!"
end

main if __FILE__ == $PROGRAM_NAME
