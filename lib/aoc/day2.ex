defmodule Aoc.Day2 do
  def run(input) do
    input
    |> String.trim()
    |> String.split("\n")
    |> do_run(0)
  end

  defp do_run([], acc), do: acc

  defp do_run([head | tail], acc) do
    do_run(tail, acc + score(head))
  end

  defp score("A X"), do: 1 + 3
  defp score("A Y"), do: 2 + 6
  defp score("A Z"), do: 3 + 0
  defp score("B X"), do: 1 + 0
  defp score("B Y"), do: 2 + 3
  defp score("B Z"), do: 3 + 6
  defp score("C X"), do: 1 + 6
  defp score("C Y"), do: 2 + 0
  defp score("C Z"), do: 3 + 3
end
