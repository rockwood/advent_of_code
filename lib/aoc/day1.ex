defmodule Aoc.Day1 do
  def run(stream) do
    stream
    |> Stream.map(&String.replace(&1, "\n", ""))
    |> Stream.chunk_while(0, &chunk_group/2, fn _ -> {:cont, 0} end)
    |> Enum.max()
  end

  defp chunk_group("", sum), do: {:cont, sum, 0}
  defp chunk_group(line, sum), do: {:cont, sum + String.to_integer(line)}
end
