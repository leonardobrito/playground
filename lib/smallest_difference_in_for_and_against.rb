require_relative "support/smallest_finder"

def match_size_pattern(value)
  value.size == 10
end

def smallest_difference_in_for_and_against
  smallest_finder(
    main_value_index: 1,
    min_value_index: 7,
    max_value_index: 9,
    file_path_string: "assets/files/soccer.dat",
    matcher_function: method(:match_size_pattern)
  )
end

puts smallest_difference_in_for_and_against
