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

  def run_file(filename)
    output = StringIO.new
    original_stdout = $stdout
    $stdout = output

    eval File.read(filename)
    $stdout = original_stdout

    output_list = output.string.split(/\n/)
    return output_list
  end


  it "will output each of the squares of 2 to 5 inclusive" do
    list = "[4, 9, 16, 25]"

    output_list = run_file(FILENAME_TO_TEST)
    matches = false

    output_list.each do |line|
      matches = matches || line.include?("[4, 9, 16, 25]")
    end
    
    expect(matches).must_equal true, 'Output did not include: "[4, 9, 16, 25]"'
  end
end
