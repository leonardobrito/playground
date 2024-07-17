class FileReader
  def self.retrieve_columns_from(file_path:, except_column_lambda: nil, &block)
    lines = File.open(file_path, File::RDONLY) { |f| f.read }

    lines.split("\n").map do |line|
      next if line.empty?

      columns = line.split(" ")

      next if !except_column_lambda.nil? && !except_column_lambda.call(columns)

      next columns if block.nil?

      block.call(columns)
    end.compact
  end
end
