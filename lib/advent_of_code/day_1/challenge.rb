module AdventOfCode
  module Day1
    class Challenge
      def initialize(inverse_captcha, part)
        @inverse_captcha = inverse_captcha
        @part = part
      end

      def run
        inverse_captcha_array.each_with_index.reduce(0) do |sum, (value, index)|
          if value == neighbor(index)
            sum + value
          else
            sum
          end
        end
      end

      def steps
        @steps ||= @part.steps(inverse_captcha_array)
      end

      def neighbor(index)
        index = (index + steps) % inverse_captcha_array.length
        inverse_captcha_array[index]
      end

      def inverse_captcha_array
        @_inverse_captcha_array ||= @inverse_captcha.split("").map(&:to_i)
      end
    end
  end
end
