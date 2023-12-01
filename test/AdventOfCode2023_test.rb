# frozen_string_literal: true

require "test_helper"

class AdventOfCode2023Test < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::AdventOfCode2023::VERSION
  end

  def test_day_one_gets_lines_correctly
    test_str = <<~STR
      1abc2
      pqr3stu8vwx
      a1b2c3d4e5f
      treb7uchet
    STR

    sum = AdventOfCode2023::DayOne.new(test_str).sum
    assert_equal 142, sum
  end

  def test_day_one_part_one_answered_correctly
    input = test_input_day 'one'
    sum = AdventOfCode2023::DayOne.new(input).sum
    assert_equal 54667, sum
  end
end
