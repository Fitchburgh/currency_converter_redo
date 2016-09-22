
require_relative 'currency'
require 'pry'
# hi mom
class CurrencyConverter
  def initialize
    @conversion_rates = {
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
  end
  def conversion(current_code, desired_code, amount)
    if @conversion_rates.key?(current_code)
      conversion_rate = @conversion_rates[current_code][desired_code]
      new_amount = amount * conversion_rate
      return new_amount
    end
  end
end
