require 'minitest/autorun'
require 'minitest/reporters'
require_relative "submission"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


describe "Test Suite" do

  it "will output each of the powers of two from 1 to 2^9 = 512" do
    list = "[1, 2, 4, 8, 16, 32, 64, 128, 256, 512]"
    included = {
      1 => false,
      2 => false,
      4 => false,
      8 => false,
      16 => false,
      32 => false,
      64 => false,
      128 => false,
      256 => false,
      512 => false,
    }

    answer = powers_of_two()

    answer.each do |value|
      included[value] = true
    end

    expect(included.values.all? true).must_equal true
    expect(included.keys.length).must_equal 10
  end
end
