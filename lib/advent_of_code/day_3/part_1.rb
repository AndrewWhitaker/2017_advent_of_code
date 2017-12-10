module AdventOfCode
  module Day3
    class Part1
      attr_reader :number

      def initialize(number)
        @number = number.to_i
      end

      def run
        distance
      end

      private
      def next_odd_square
        @_next_odd_square ||= (Math.sqrt(number - 1) / 2).round * 2 + 1
      end

      def prev_odd_square
        @_prev_odd_square ||= next_odd_square - 2
      end

      def ring_start
        @_ring_start ||= (prev_odd_square * prev_odd_square) + 1
      end

      def ring_end
        @_ring_end ||= (next_odd_square * next_odd_square)
      end

      def num_ring_elements
        next_odd_square - 1
      end

      def distance
        number_offset = (number - ring_start) % num_ring_elements

        base_distance = (next_odd_square - 1) / 2
        base_offset = base_distance - 1

        base_distance + (number_offset - base_offset).abs
      end
    end
  end
end
