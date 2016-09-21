require_relative 'currency'
require_relative 'currency_converter'
require_relative 'data_structures'
require_relative 'global_methods'

def main
  a = Currency.new('jpy', 5)
  puts "#{a}"
end

main if __FILE__ == $PROGRAM_NAME
