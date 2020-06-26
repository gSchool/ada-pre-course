require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./io_test_helpers"
require_relative "./submission"

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

  def run_file(filename)
    output = StringIO.new
    original_stdout = $stdout
    $stdout = output

    eval File.read(filename)
    $stdout = original_stdout

    output_list = output.string.split(/\n/)
    return output_list
  end


  it "will add another name to the list" do
    answer = array_1()

    expect(answer.length).must_equal 4
  end
end
