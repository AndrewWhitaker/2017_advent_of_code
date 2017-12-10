require "advent_of_code/day_1/challenge"

module AdventOfCode
  module Day1
    class Part2
      def initialize(inverse_captcha)
				@inverse_captcha = inverse_captcha
      end

      def run
				puts AdventOfCode::Day1::Challenge.new(@inverse_captcha, self).run
			end

      def steps(array)
        array.length / 2
      end
    end
  end
end
