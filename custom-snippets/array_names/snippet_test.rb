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


  it "will read in 5 names and output them all capitalized" do
    responses = user_input_helper(["papa", "mama", "huey", "duey", "louie"], FILENAME_TO_TEST)
    contains_papa = false
    contains_mama = false
    contains_huey = false
    contains_duey = false
    contains_louie = false

    responses.each do |line|
      if line.match(/PAPA/)
        contains_papa = true
      end

      if line.match(/MAMA/)
        contains_mama = true
      end

      if line.match(/HUEY/)
        contains_huey = true
      end

      if line.match(/DUEY/)
        contains_duey = true
      end

      if line.match(/LOUIE/)
        contains_louie = true
      end
    end
    expect(contains_papa && contains_mama && contains_huey && contains_duey && contains_louie).must_equal true
  end
end
