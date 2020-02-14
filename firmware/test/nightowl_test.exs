defmodule NightowlTest do
  use ExUnit.Case
  doctest Nightowl

  test "greets the world" do
    assert Nightowl.hello() == :world
  end
end
