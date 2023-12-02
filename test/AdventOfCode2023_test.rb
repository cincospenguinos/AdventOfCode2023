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

  def test_day_one_part_two_supports_numbers_written_out
    skip 'Getting a helper class put together'
    test_str = <<~STR
      two1nine
      eightwothree
      abcone2threexyz
      xtwone3four
      4nineeightseven2
      zoneight234
      7pqrstsixteen
    STR

    sum = AdventOfCode2023::DayOne.new(test_str).sum(:words)
    assert_equal 281, sum
  end

  def test_numeric_extraction_works_on_simple_numbers
    numbers = {
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

    e = AdventOfCode2023::NumericExtraction.new
    numbers.keys.each { |n| assert_equal numbers[n], e.from(n) }
  end

  def test_numeric_extraction_handles_multiple_digits
    numbers = {
      'twentythree' => 23,
      'seventyseven' => 77,
      'sixtynine' => 69,
    }

    e = AdventOfCode2023::NumericExtraction.new
    numbers.keys.each { |n| assert_equal numbers[n], e.from(n) }
  end
end
