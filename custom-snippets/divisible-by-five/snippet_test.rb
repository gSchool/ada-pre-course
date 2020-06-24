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
      eval File.read(filename)
    end
    $stdout = original_stdout
    
    output_list = output.string.split(/\n/)
    return output_list
  end

  it "will result in NOT A MULTIPLE OF 5 for 13" do
    output_list = user_input_helper('13', FILENAME_TO_TEST)
    
    not_a_multiple_of_five = false
    multiple_of_five = false

    output_list.each do |word|
      if (word.match /NOT A MULTIPLE OF 5/) && !multiple_of_five
        not_a_multiple_of_five = true
      elsif (word.match /MULTIPLE OF 5/) && !not_a_multiple_of_five
        multiple_of_five = true
      end
    end

    expect(not_a_multiple_of_five).must_equal true
    expect(multiple_of_five).must_equal false
  end

  it "will result in MULTIPLE OF 5 for 10" do
    output_list = user_input_helper('10', FILENAME_TO_TEST)
    
    not_a_multiple_of_five = false
    multiple_of_five = false

    output_list.each do |word|
      if (word.match /NOT A MULTIPLE OF 5/) && !multiple_of_five
        not_a_multiple_of_five = true
      elsif (word.match /MULTIPLE OF 5/) && !not_a_multiple_of_five
        multiple_of_five = true
      end
    end

    expect(not_a_multiple_of_five).must_equal false
    expect(multiple_of_five).must_equal true
  end

  it "will result in MULTIPLE OF 5 for 0" do
    output_list = user_input_helper('0', FILENAME_TO_TEST)
    
    not_a_multiple_of_five = false
    multiple_of_five = false

    output_list.each do |word|
      if (word.match /NOT A MULTIPLE OF 5/) && !multiple_of_five
        not_a_multiple_of_five = true
      elsif (word.match /MULTIPLE OF 5/) && !not_a_multiple_of_five
        multiple_of_five = true
      end
    end

    expect(not_a_multiple_of_five).must_equal false
    expect(multiple_of_five).must_equal true
  end

  it "will result in EVEN for -10" do
    output_list = user_input_helper('-10', FILENAME_TO_TEST)
    
    not_a_multiple_of_five = false
    multiple_of_five = false

    output_list.each do |word|
      if (word.match /NOT A MULTIPLE OF 5/) && !multiple_of_five
        not_a_multiple_of_five = true
      elsif (word.match /MULTIPLE OF 5/) && !not_a_multiple_of_five
        multiple_of_five = true
      end
    end

    expect(not_a_multiple_of_five).must_equal false
    expect(multiple_of_five).must_equal true
  end
end
