require_relative "support/file_reader"

def smallest_difference_in_for_and_against
  smallest_difference_in_for_and_against = Float::INFINITY
  team_name_from_smallest_difference_in_for_and_against = nil


  file_path = File.join(__dir__, 'assets', 'files', 'soccer.dat')

  FileReader.retrieve_columns_from(file_path:, except_column_lambda: -> (columns) { columns.size == 10 }) do |columns|
    scored_against = columns[9].to_i
    scored_for = columns[7].to_i
    difference = scored_against - scored_for

    if difference < smallest_difference_in_for_and_against
      smallest_difference_in_for_and_against = difference
      team_name_from_smallest_difference_in_for_and_against = columns[1]
    end
  end

  team_name_from_smallest_difference_in_for_and_against
end
