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


  it "will finish after getting a valid password" do
    output_list = user_input_helper(['13pasta65AB^^@', '13pasta65AB^^@'], FILENAME_TO_TEST)
    puts "Your instructor will give you additional feedback!"

    expect(output_list.length).wont_be 0
  end
end
