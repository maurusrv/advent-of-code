defmodule Day1 do
  @moduledoc false
  alias Day1

  # With pattern matching!
  @spec get_floor(instruction :: String.t()) :: number
  def get_floor(instruction) do
    String.split(instruction, "", trim: true) |>
      Enum.reduce(0, fn paren, current_floor ->
        case paren do
          "(" -> current_floor + 1
          ")" -> current_floor - 1
          _ -> current_floor
        end
      end)
  end
end
