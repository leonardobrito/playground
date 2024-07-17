require_relative "support/file_reader"

def smallest_temperature_spread
  smallest_temperature_spread = Float::INFINITY
  day_with_smallest_temperature_spread = nil

  file_path = File.join(__dir__, 'assets', 'files', 'w_data.dat')

  FileReader.retrieve_columns_from(file_path:, except_column_lambda: -> (columns) { columns[0].match(/^(\d)+$/) }) do |columns|
    day = columns[0]
    min_temperature = columns[2].to_i
    max_temperature = columns[1].to_i

    temperature_spread = max_temperature - min_temperature

    if temperature_spread < smallest_temperature_spread
      smallest_temperature_spread = temperature_spread
      day_with_smallest_temperature_spread = day
    end
  end

  day_with_smallest_temperature_spread
end
