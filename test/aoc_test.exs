defmodule AocTest do
  use ExUnit.Case
  doctest Aoc

  test "day 1" do
    stream = File.stream!("test/fixtures/day1.txt")

    assert Aoc.Day1.run(stream) == 71300
  end
end