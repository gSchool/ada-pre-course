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

  it "will result in GO for green" do
    output_list = user_input_helper('green', FILENAME_TO_TEST)
    
    includes_go = false
    includes_stop = false

    output_list.each do |word|
      if (word.match /GO/)
        includes_go = true
      elsif (word.match /STOP/)
        includes_stop = true
      end
    end

    expect(includes_stop).must_equal false
    expect(includes_go).must_equal true
  end

  it "will result in STOP for Green" do
    output_list = user_input_helper('Green', FILENAME_TO_TEST)
    
    includes_go = false
    includes_stop = false

    output_list.each do |word|
      if (word.match /GO/)
        includes_go = true
      elsif (word.match /STOP/)
        includes_stop = true
      end
    end

    expect(includes_stop).must_equal true
    expect(includes_go).must_equal false
  end

  it "will result in STOP for Red" do
    output_list = user_input_helper('Red', FILENAME_TO_TEST)
    
    includes_go = false
    includes_stop = false

    output_list.each do |word|
      if (word.match /GO/)
        includes_go = true
      elsif (word.match /STOP/)
        includes_stop = true
      end
    end

    expect(includes_stop).must_equal true
    expect(includes_go).must_equal false
  end

  it "will result in STOP for blue" do
    output_list = user_input_helper('blue', FILENAME_TO_TEST)
    
    includes_go = false
    includes_stop = false

    output_list.each do |word|
      if (word.match /GO/)
        includes_go = true
      elsif (word.match /STOP/)
        includes_stop = true
      end
    end

    expect(includes_stop).must_equal true
    expect(includes_go).must_equal false
  end
end
