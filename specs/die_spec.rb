# die_spec.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../die'

describe "Testing Die Class" do
  let(:die) {Die.new}
  it "You can create an instance of Die" do

    die.class.must_equal Die
  end

  it "rolls a number >= 1 and less than 7" do
    num = die.value
    expect(num).must_be :>, 0
    expect(num).must_be :<, 7
  end
  it "Has a roll method" do
    expect(die).must_respond_to :roll
  end
end