require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative './submission.rb'

describe "Test Suite" do
  it "works" do
    expect(2 + 2).must_equal 4
  end
end