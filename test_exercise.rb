require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'test exercise' do
    assert_equal(3, Exercise.new().edit_distance('kitten', 'sitting'))
  end

  test 'add' do
    assert_equal(2, Exercise.new().edit_distance('0123', '012345'))
  end

  test 'remove' do
    assert_equal(2, Exercise.new().edit_distance('012345', '0123'))
  end


  test 'add and remove' do
    assert_equal(2, Exercise.new().edit_distance('01234', '12345'))
  end

  test 'add remove and change' do
    assert_equal(3, Exercise.new().edit_distance('012345678', '123446789'))
  end
end
