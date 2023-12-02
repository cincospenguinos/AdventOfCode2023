# frozen_string_literal: true

require_relative "AdventOfCode2023/version"

module AdventOfCode2023
  class NumericExtraction
    NAMES_AS_NUMBERS = {
       "million" => 1000000,
       "thousand" => 1000,
       "hundred" => 100,
       "ninety" => 90,
       "eighty" => 80,
       "seventy" => 70,
       "sixty" => 60,
       "fifty" => 50,
       "forty" => 40,
       "thirty" => 30,
       "twenty" => 20,
       "nineteen" => 19,
       "eighteen" => 18,
       "seventeen"  => 17,
       "sixteen" => 16,
       "fifteen" => 15,
       "fourteen" => 14,
       "thirteen" => 13,
       "twelve" => 12,
       "eleven" => 11,
       "ten" => 10,
       "nine" => 9,
       "eight" => 8,
       "seven" => 7,
       "six" => 6,
       "five" => 5,
       "four" => 4,
       "three" => 3,
       "two" => 2,
       "one" => 1,
    }

    SINGLE_DIGITS_WITH_TENS_NAMES = NAMES_AS_NUMBERS.slice(*%w(six seven eight nine))

    def initialize; end

    def from(string)
      return NAMES_AS_NUMBERS[string].to_i unless NAMES_AS_NUMBERS[string].nil?

      NAMES_AS_NUMBERS.keys
        .select { |number_string| string.include?(number_string) }
        .map { |number_string| NAMES_AS_NUMBERS[number_string] }
        .sum
    end
  end

  class DayOne
    def initialize(input_str)
      @lines = input_str.split("\n")
    end

    def sum(mode = :numeric)
      lines_in(mode)
        .map { |l| "#{l.scan(/\d/)[0]}#{l.scan(/\d/)[-1]}" }
        .map { |l| l.to_i }
        .sum
    end

    private

    def lines_in(mode)
      return @lines.map { |l| l.gsub(/[a-zA-Z]+/, '') } if mode == :numeric

      puts @lines.map { |l| l.split(/\d+/) }.inspect
    end
  end
end
