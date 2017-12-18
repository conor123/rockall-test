class Validator
  def self.validate_input(input_array)
    if ( ( input_array.length == 0 ) || ( input_array.length >= 2 ) )
      puts "> Usage: ruby -Ilib market_data.rb url.json\n"
      # abort "> ERROR: exiting!"
      return false
    else
      puts "> Input Validated OK"
      input_array[0]
    end
  end
end