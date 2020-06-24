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

  it "12 is a member of the seattle seahawks" do
    output_list = user_input_helper('12', FILENAME_TO_TEST)
    
    seahawks = true

    output_list.each do |word|
      if (word.match /That number is retired from the Seattle Seahawks!/)
        seahawks = true
      end
    end

    expect(seahawks).must_equal true
  end

  it "71 is a member of the seattle seahawks" do
    output_list = user_input_helper('71', FILENAME_TO_TEST)
    
    seahawks = true

    output_list.each do |word|
      if (word.match /That number is retired from the Seattle Seahawks!/)
        seahawks = true
      end
    end

    expect(seahawks).must_equal true
  end

  it "80 is a member of the seattle seahawks" do
    output_list = user_input_helper('80', FILENAME_TO_TEST)
    
    seahawks = true

    output_list.each do |word|
      if (word.match /That number is retired from the Seattle Seahawks!/)
        seahawks = true
      end
    end

    expect(seahawks).must_equal true
  end

  it "47 results in nothing" do
    output_list = user_input_helper('47', FILENAME_TO_TEST)
    
    expect(output_list.length).must_equal 1
    expect(output_list).wont_include "seahawks"
  end
end
