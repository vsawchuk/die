# die_spec.rb

require 'minitest/autorun'
require 'minitest/reporters'

require_relative '../lib/die.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# describe blocks group tests about the same thing/same kinds of tests
describe "Testing the Die Class" do
  # before blocks will run before every it block in the describe block
  before do
    @die = Die.new
    @die_20 = Die.new(20)
  end
  it "You can create an instance of Die" do
    @die.class.must_equal Die
  end
  it "Can take an argument to initialize" do
    @die.class.must_equal Die
  end
  # when you want an alert if something can happen, use expect/raise or throw
  it "Can't take 0 as an argument to initialize" do
    expect{ Die.new(0) }.must_raise ArgumentError
  end
  it "You can roll the die" do
    @die.must_respond_to :roll
  end
  it "Default sides value must give you a number between 1 & 6" do
    @die.value.must_be_instance_of Integer
    @die.value.must_be :>, 0
    @die.value.must_be :<, 7
  end
  it "Allows a multi-sided die to show appropriate numbers" do
    20.times do
      @die_20.roll
      @die_20.value.must_be_instance_of Integer
      @die_20.value.must_be :>, 0
      @die_20.value.must_be :<, 21
    end
  end
end
