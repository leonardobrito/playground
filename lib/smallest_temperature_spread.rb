require_relative "support/smallest_finder"

def match_pattern(value)
  value[0].match(/^(\d)+$/)
end

def smallest_temperature_spread
  smallest_finder(0, 2, 1, "assets/files/w_data.dat", method(:match_pattern))
end

puts smallest_temperature_spread
