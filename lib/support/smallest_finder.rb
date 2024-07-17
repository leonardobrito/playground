require_relative "file_reader"

def smallest_finder(main_value_index:, min_value_index:, max_value_index:, file_path_string:, matcher_function:)
  smallest_value = Float::INFINITY
  main_value = nil

  file_path = File.join(__dir__, '..', file_path_string)

  FileReader.retrieve_columns_from(file_path:, except_column_lambda: matcher_function) do |columns|
    main_column_value = columns[main_value_index]
    min_value = columns[min_value_index].to_i
    max_value = columns[max_value_index].to_i

    difference = max_value - min_value

    if difference < smallest_value
      smallest_value = difference
      main_value = main_column_value
    end

  end

  main_value
end
