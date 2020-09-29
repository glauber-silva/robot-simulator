defmodule RobotSimulator do

  @valid_directions [:north, :south, :east, :west]

  defstruct direction: :north, position: {0, 0}

  @doc """
  Create a Robot Simulator given an initial direction and position.

  Valid directions are: `:north`, `:east`, `:south`, `:west`
  """
  def create(direction \\ :north, position \\ {0,0}) do
    with :ok <- valid_direction(direction),
         :ok <- valid_position(position),
    do: %RobotSimulator{direction: direction, position: position}
  end


  @doc """
  Simulate the robot's execute_instructionment given a string of instructions.

  Valid instructions are: "R" (turn right), "L", (turn left), and "A" (advance)
  """
  def simulate(robot, instructions) do
    instructions
    |> String.graphemes()
    |> do_move(robot)
  end

  def do_move(instructions, robot) do

  end


  @doc """
  show robot's position
  """
  def position(robot) do
    robot.position
  end

  @doc """
  show robot's direction
  """
  def direction(robot) do
    robot.direction
  end

  defp valid_direction(direction) when direction in @valid_directions, do: :ok
  defp valid_direction(_), do: {:error, "invalid direction"}

  defp valid_position({x, y}) when is_integer(x) and is_integer(y), do: :ok
  defp valid_position(_), do: {:error, "invalid position"}

end
