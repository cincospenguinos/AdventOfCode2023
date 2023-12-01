# frozen_string_literal: true

require_relative "AdventOfCode2023/version"

module AdventOfCode2023
  class DayOne
    def initialize(input_str)
      @lines = input_str.split("\n")
    end

    def sum
      @lines.map { |l| l.gsub(/[a-zA-Z]+/, '') }
        .map { |l| "#{l.scan(/\d/)[0]}#{l.scan(/\d/)[-1]}" }
        .map { |l| l.to_i }
        .sum
    end
  end
end
