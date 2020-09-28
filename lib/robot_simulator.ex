defmodule RobotSimulator do


  @valid_directions [:north, :south, :east, :west]

  @doc """
  Create a Robot Simulator given an initial direction and position.

  Valid directions are: `:north`, `:east`, `:south`, `:west`
  """
  def create(direction, position) when valid_direction(direction) and valid_position(position)
    %RobotSimulator{
      direction: direction,
      position: position
    }
  end

  defp valid_direction(direction) when direction in @valid_directions, do: :ok
  defp valid_direction(_), do: {:error, "invalid direction"}

  defp valid_position({x, y}) when is_integer(x) and is_integer(y), do: :ok
  defp valid_position(_), do: {:error, "invalid position"}

end
