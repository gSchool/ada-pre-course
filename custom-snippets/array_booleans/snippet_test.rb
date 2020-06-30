require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./io_test_helpers"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

FILENAME_TO_TEST = './submission.rb'

describe "Test Suite" do

  def user_input_helper(given_input, filename = FILENAME_TO_TEST)
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

  def run_file(filename)
    output = StringIO.new
    original_stdout = $stdout
    $stdout = output

    eval File.read(filename)
    $stdout = original_stdout

    output_list = output.string.split(/\n/)
    return output_list
  end


  it "reads in 5 booleans and outputs YES if they are all true" do
    responses = user_input_helper(["true", "true", "true", "true", "true"], FILENAME_TO_TEST)
    outputs_yes = false
    responses.each do |line|
      if line.match(/YES/i)
        outputs_yes = true
      end
    end

    expect(outputs_yes).must_equal true
  end

  it "reads in 5 booleans and outputs NO if at least one is not true" do
    responses = user_input_helper(["true", "true", "true", "false", "true"], FILENAME_TO_TEST)
    outputs_yes = false
    responses.each do |line|
      if line.match(/YES/i)
        outputs_yes = true
      end
    end

    expect(outputs_yes).must_equal false
  end

end
