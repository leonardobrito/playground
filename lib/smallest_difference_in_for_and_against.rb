require_relative "support/smallest_finder"

def match_size_pattern(value)
  value.size == 10
end

def smallest_difference_in_for_and_against
  smallest_finder(1, 7, 9, "assets/files/soccer.dat", method(:match_size_pattern))
end

puts smallest_difference_in_for_and_against
