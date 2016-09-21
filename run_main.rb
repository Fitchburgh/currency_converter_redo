require_relative 'currency'
require_relative 'currency_converter'
require_relative 'data_structures'
require_relative 'global_methods'

def main
  a = Currency.new('usd', 5)
  b = Currency.new('jpy', 5)

  puts "Please enter currency symbol or code you would like to convert: "
  user_currency = gets.chomp
  puts "Please enter the amount you would like to convert"
  user_amount = gets.chomp
  amount_to_convert = Currency.new(user_currency, user_amount)

  puts a.currency_code
end

main if __FILE__ == $PROGRAM_NAME
