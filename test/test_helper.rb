# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "AdventOfCode2023"
require "byebug"

def test_input_day(day)
	File.read("test/input/#{day}.txt")
end

require "minitest/autorun"
