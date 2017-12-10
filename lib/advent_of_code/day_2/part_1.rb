module AdventOfCode
  module Day2
    class Part1
      def initialize(spreadsheet)
        @spreadsheet = spreadsheet
      end

      def run
        result = @spreadsheet.split("\n").reduce(0) do |checksum, row|
          checksum + row.split("\t").map(&:to_i).minmax.reduce(&:-).abs
        end

        puts result
      end
    end
  end
end
