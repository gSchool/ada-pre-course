require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./io_test_helpers"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

FILENAME_TO_TEST = './submission.rb'

describe "Test Suite" do

  def user_input_helper(given_input, filename)
    output = StringIO.new
    original_stdout = $stdout
    $stdout = output
    simulate_stdin(given_input) do
      eval File.read(filename).force_encoding("utf-8")
    end
    $stdout = original_stdout
    
    output_list = output.string.split(/\n/)
    return output_list
  end

  it "will result in 12 for TALL size" do
    output_list = user_input_helper('tall', FILENAME_TO_TEST)
    
    eight_ounces = false
    twelve_ounces = false
    sixteen_ounces = false
    twenty_ounces = false

    output_list.each do |word|
      if (word.match /8/)
        eight_ounces = true
      elsif (word.match /12/)
        twelve_ounces = true
      elsif (word.match /16/)
        sixteen_ounces = true
      elsif (word.match /20/)
        twenty_ounces = true
      end
    end

    expect(eight_ounces).must_equal false
    expect(twelve_ounces).must_equal true
    expect(sixteen_ounces).must_equal false
    expect(twenty_ounces).must_equal false
  end

  it "will result in 12 for TALL size" do
    output_list = user_input_helper('tall', FILENAME_TO_TEST)
    
    eight_ounces = false
    twelve_ounces = false
    sixteen_ounces = false
    twenty_ounces = false

    output_list.each do |word|
      if (word.match /8/)
        eight_ounces = true
      elsif (word.match /12/)
        twelve_ounces = true
      elsif (word.match /16/)
        sixteen_ounces = true
      elsif (word.match /20/)
        twenty_ounces = true
      end
    end

    expect(eight_ounces).must_equal false
    expect(twelve_ounces).must_equal true
    expect(sixteen_ounces).must_equal false
    expect(twenty_ounces).must_equal false
  end

  it "will result in 16 for GRANDE size" do
    output_list = user_input_helper('Grande', FILENAME_TO_TEST)
    
    eight_ounces = false
    twelve_ounces = false
    sixteen_ounces = false
    twenty_ounces = false

    output_list.each do |word|
      if (word.match /8/)
        eight_ounces = true
      elsif (word.match /12/)
        twelve_ounces = true
      elsif (word.match /16/)
        sixteen_ounces = true
      elsif (word.match /20/)
        twenty_ounces = true
      end
    end

    expect(eight_ounces).must_equal false
    expect(twelve_ounces).must_equal false
    expect(sixteen_ounces).must_equal true
    expect(twenty_ounces).must_equal false
  end

  it "will result in 20 for VENTI size" do
    output_list = user_input_helper('venti', FILENAME_TO_TEST)
    
    eight_ounces = false
    twelve_ounces = false
    sixteen_ounces = false
    twenty_ounces = false

    output_list.each do |word|
      if (word.match /8/)
        eight_ounces = true
      elsif (word.match /12/)
        twelve_ounces = true
      elsif (word.match /16/)
        sixteen_ounces = true
      elsif (word.match /20/)
        twenty_ounces = true
      end
    end

    expect(eight_ounces).must_equal false
    expect(twelve_ounces).must_equal false
    expect(sixteen_ounces).must_equal false
    expect(twenty_ounces).must_equal true
  end

  it "will result in nothing for bigger size" do
    output_list = user_input_helper('bigger', FILENAME_TO_TEST)
    
    eight_ounces = false
    twelve_ounces = false
    sixteen_ounces = false
    twenty_ounces = false

    output_list.each do |word|
      if (word.match /8/)
        eight_ounces = true
      elsif (word.match /12/)
        twelve_ounces = true
      elsif (word.match /16/)
        sixteen_ounces = true
      elsif (word.match /20/)
        twenty_ounces = true
      end
    end

    expect(eight_ounces).must_equal false
    expect(twelve_ounces).must_equal false
    expect(sixteen_ounces).must_equal false
    expect(twenty_ounces).must_equal false
  end
end
