defmodule AocTest do
  use ExUnit.Case
  doctest Aoc

  test "day 1" do
    stream = File.stream!("test/fixtures/day1.txt")

    assert Aoc.Day1.run(stream) == 209691
  end

  test "day 2" do
    input = File.read!("test/fixtures/day2.txt")

    assert Aoc.Day2.run(input) == 15422
  end
end
