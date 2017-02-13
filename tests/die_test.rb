# die_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/die'

class TestDie < MiniTest::Unit::TestCase
  def test_creation_of_die
    @die = Die.new
    # The class of @die should be Die
    assert @die.class == Die, "There must be a Die class."
  end

  def test_roll
    @die = Die.new
    assert_operator @die.value, :>, 0
    assert_operator @die.value, :<, 7
  end

end
