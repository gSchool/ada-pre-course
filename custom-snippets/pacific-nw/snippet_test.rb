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

  it "will result in 'This state is in the PNW' for Washington" do
    output_list = user_input_helper('Washington', FILENAME_TO_TEST)
    
    in_pw = false
    not_in_pw = false

    output_list.each do |word|
      if (word.match /This state is in the PNW/) && !not_in_pw
        in_pw = true
      elsif (word.match /You should move to the PNW; it’s great here!/ ) && !in_pw
        not_in_pw = true
      end
    end

    expect(in_pw).must_equal true
    expect(not_in_pw).must_equal false
  end

  it "will result in 'This state is in the PNW' for Idaho" do
    output_list = user_input_helper('Idaho', FILENAME_TO_TEST)
    
    in_pw = false
    not_in_pw = false

    output_list.each do |word|
      if (word.match /This state is in the PNW/) && !not_in_pw
        in_pw = true
      elsif (word.match /You should move to the PNW; it’s great here!/ ) && !in_pw
        not_in_pw = true
      end
    end

    expect(in_pw).must_equal true
    expect(not_in_pw).must_equal false
  end

  it "will result in 'You should move to the PNW; it’s great here!' for Texas" do
    output_list = user_input_helper('Texas', FILENAME_TO_TEST)
    
    in_pw = false
    not_in_pw = false

    output_list.each do |word|
      if (word.match /This state is in the PNW/) && !not_in_pw
        in_pw = true
      elsif (word.match /You should move to the PNW; it’s great here!/ ) && !in_pw
        not_in_pw = true
      end
    end

    expect(in_pw).must_equal false
    expect(not_in_pw).must_equal true
  end

  it "will result in 'You should move to the PNW; it’s great here!' for pasta" do
    output_list = user_input_helper('pasta', FILENAME_TO_TEST)
    
    in_pw = false
    not_in_pw = false

    output_list.each do |word|
      if (word.match /This state is in the PNW/) && !not_in_pw
        in_pw = true
      elsif (word.match /You should move to the PNW; it’s great here!/ ) && !in_pw
        not_in_pw = true
      end
    end

    expect(in_pw).must_equal false
    expect(not_in_pw).must_equal true
  end
end
