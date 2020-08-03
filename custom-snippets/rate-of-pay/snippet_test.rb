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

  it "will result in $210.00 21 earnings and 10 hours" do
    output_list = user_input_helper(['21', '10'], FILENAME_TO_TEST)

    matches = false
    
    output_list.each do |word|
      if word.match(/\$210/)
        matches = true
      end
    end

    expect(matches).must_equal true
  end

  it "will result in $1155.00 21 earnings and 50 hours" do
    output_list = user_input_helper(['21', '50'], FILENAME_TO_TEST)

    matches = false
    
    output_list.each do |word|
      if word.match(/\$1155/)
        matches = true
      end
    end

    expect(matches).must_equal true
  end

  it "will result in $550.00 10 earnings and 50 hours" do
    output_list = user_input_helper(['10', '50'], FILENAME_TO_TEST)

    matches = false
    
    output_list.each do |word|
      if word.match(/\$550/)
        matches = true
      end
    end

    expect(matches).must_equal true
  end  

  it "will result in $0.00 21 earnings and 0 hours" do
    output_list = user_input_helper(['0', '50'], FILENAME_TO_TEST)

    matches = false
    
    output_list.each do |word|
      if word.match(/\$0/)
        matches = true
      end
    end

    expect(matches).must_equal true
  end  
end
