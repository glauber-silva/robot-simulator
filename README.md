# RobotSimulator

Write a robot simulator.

A robot factory's test facility needs a program to verify robot movements.

The robots have three possible movements:

    -turn right
    -turn left
    -advance

Robots are placed on a hypothetical infinite grid, facing a particular direction (north, east, south, or west) at a set of {x,y} coordinates, e.g., {3,8}, with coordinates increasing to the north and east.

The robot then receives a number of instructions, at which point the testing facility verifies the robot's new position, and in which direction it is pointing.

    -The letter-string "RAALAL" means:
        --Turn right
        --Advance twice
        --Turn left
        --Advance once
        --Turn left yet again
    Say a robot starts at {7, 3} facing north. Then running this stream of instructions should leave it at {9, 4} facing west.


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `robot_simulator` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:robot_simulator, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/robot_simulator](https://hexdocs.pm/robot_simulator).

