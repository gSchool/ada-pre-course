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
    
    output_list = output.string.split(/\s/)
    return output_list
  end

  it "will result in PASSING for 71" do
    output_list = user_input_helper('71\n', FILENAME_TO_TEST)
    
    includes_not = false
    includes_passing = false

    output_list.each do |word|
      if (word.match /PASSING/)
        includes_passing = true
      elsif (word.match /NOT/)
        includes_not = true
      end
    end

    expect(includes_not).must_equal false
    expect(includes_passing).must_equal true
  end

  it "will result in NOT PASSING for 70" do
    output_list = user_input_helper(['70\n'], FILENAME_TO_TEST)
    
    includes_not = false
    includes_passing = false

    output_list.each do |word|
      if (word.match /PASSING/) && includes_not == true
        includes_passing = true
      elsif (word.match /NOT/) && includes_passing == false
        includes_not = true
      end
    end
    expect(includes_not).must_equal true
    expect(includes_passing).must_equal true
  end

  it "will result in PASSING for 100" do
    output_list = user_input_helper('100\n', FILENAME_TO_TEST)
    
    includes_not = false
    includes_passing = false

    output_list.each do |word|
      if (word.match /PASSING/)
        includes_passing = true
      elsif (word.match /NOT/)
        includes_not = true
      end
    end

    expect(includes_not).must_equal false
    expect(includes_passing).must_equal true
  end

  it "will result in NOT PASSING for 0" do
    output_list = user_input_helper(['70\n'], FILENAME_TO_TEST)
    
    includes_not = false
    includes_passing = false

    output_list.each do |word|
      if (word.match /PASSING/) && includes_not == true
        includes_passing = true
      elsif (word.match /NOT/) && includes_passing == false
        includes_not = true
      end
    end
    expect(includes_not).must_equal true
    expect(includes_passing).must_equal true
  end
end
