# die_test.rb

require 'minitest/autorun'
require 'minitest/reporters'

require_relative './lib/die.rb'

class TestDie < MiniTest::Unit::TestCase
  def test_creation_of_die
    @die = Die.new
    # the class of @die should be Die
    assert @die.class == Die, "There must be a Die class."
  end

end
