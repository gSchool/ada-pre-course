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
    
    output_list = output.string.split(/\s/)
    return output_list
  end
  
  it "will print hello," do
    output_list = user_input_helper('', FILENAME_TO_TEST)
    
    includes_hello = false
    output_list.each do |word|
      if (word.match /hello,/i)
        includes_hello = true
      end
    end

    expect(includes_hello).must_equal true
  end

  it "will include world!" do
    output_list = user_input_helper('-1', FILENAME_TO_TEST)

    includes_world = false
    output_list.each do |word|
      if (word.match /world\!/i)
        includes_world = true
      end
    end

    expect(includes_world).must_equal true

  end
end
