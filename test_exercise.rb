require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'exercise test 0  ' do
    assert_equal(3, Exercise.new().edit_distance('kitten', 'sitting'))
  end
end
