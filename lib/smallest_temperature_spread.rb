require_relative "support/smallest_finder"

def match_pattern(value)
  value[0].match(/^(\d)+$/)
end

def smallest_temperature_spread
  smallest_finder(
    main_value_index: 0,
    min_value_index: 2,
    max_value_index: 1,
    file_path_string: "assets/files/w_data.dat",
    matcher_function: method(:match_pattern)
  )
end

puts smallest_temperature_spread
