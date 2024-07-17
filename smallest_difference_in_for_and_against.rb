require_relative "lib/file_reader"

smallest_difference_in_for_and_against = Float::INFINITY
team_name_from_smallest_difference_in_for_and_against = nil

FileReader.retrieve_columns_from(file: 'soccer.dat', except_column_lambda: -> (columns) { columns.size == 10 }) do |columns|
  scored_against = columns[9].to_i
  scored_for = columns[7].to_i
  difference = scored_against - scored_for

  if difference < smallest_difference_in_for_and_against
    smallest_difference_in_for_and_against = difference
    team_name_from_smallest_difference_in_for_and_against = columns[1]
  end
end

puts team_name_from_smallest_difference_in_for_and_against
