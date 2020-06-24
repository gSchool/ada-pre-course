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

  it "will result in ODD for 13" do
    output_list = user_input_helper('13', FILENAME_TO_TEST)
    puts output_list
    
    includes_odd = false
    includes_even = false

    output_list.each do |word|
      if (word.match /EVEN/)
        includes_even = true
      elsif (word.match /ODD/)
        includes_odd = true
      end
    end

    expect(includes_even).must_equal false
    expect(includes_odd).must_equal true
  end

  it "will result in EVEN for 14" do
    output_list = user_input_helper('14', FILENAME_TO_TEST)
    puts output_list
    
    includes_odd = false
    includes_even = false

    output_list.each do |word|
      if (word.match /EVEN/)
        includes_even = true
      elsif (word.match /ODD/)
        includes_odd = true
      end
    end

    expect(includes_even).must_equal true
    expect(includes_odd).must_equal false
  end

  it "will result in ODD for -1" do
    output_list = user_input_helper('-1', FILENAME_TO_TEST)
    puts output_list
    
    includes_odd = false
    includes_even = false

    output_list.each do |word|
      if (word.match /EVEN/)
        includes_even = true
      elsif (word.match /ODD/)
        includes_odd = true
      end
    end

    expect(includes_even).must_equal false
    expect(includes_odd).must_equal true
  end

  it "will result in EVEN for 0" do
    output_list = user_input_helper('0', FILENAME_TO_TEST)
    
    includes_odd = false
    includes_even = false

    output_list.each do |word|
      if (word.match /EVEN/)
        includes_even = true
      elsif (word.match /ODD/)
        includes_odd = true
      end
    end

    expect(includes_even).must_equal true
    expect(includes_odd).must_equal false
  end
end
