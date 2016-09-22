# hi mom
require_relative 'currency'
class CurrencyConverter
  def initialize
    @conversion_rates = {
      '$' => {
        '€' => 0.894726,
        '¥‎' => 101.818,
        '$' => 1
      },
      '€' => {
        '$' => 1.11763,
        '¥‎' => 113.774,
        '€' => 1
      },
      '¥‎' => {
        '$' => 0.00982184,
        '€' => 0.00879,
        '¥‎' => 1
      }
    }
  end
  def conversion(current_code, desired_code)
    #need to take $ 5 and make it 509.09 yen.
    if @conversion_rates.has_key?(current_code)
      conversion_rate = @conversion_rates[current_code][desired_code]
      new_amount = currency_code.amount * conversion_rate#is equal to a value
      return new_amount
    end
  end
  # Need to make the
end
