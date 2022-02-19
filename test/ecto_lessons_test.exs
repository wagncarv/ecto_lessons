defmodule EctoLessonsTest do
  use ExUnit.Case
  doctest EctoLessons

  test "greets the world" do
    assert EctoLessons.hello() == :world
  end
end
