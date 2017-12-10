module AdventOfCode
  module Day2
    class Part2
      def initialize(spreadsheet)
        @spreadsheet = spreadsheet
      end

      def run
        result = @spreadsheet.split("\n").reduce(0) do |checksum, row|
          values = row.split("\t").map(&:to_i).sort
          val = row_value(values)

          checksum + val
        end

        puts result
      end

      private

      def row_value(row)
        row.permutation(2)
          .find { |first, second| first % second == 0 }
          .reduce { |first, second| first / second }
      end
    end
  end
end
