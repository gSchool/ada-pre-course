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

  it "5 will result in 3 love mes and two love me nots" do
    output_list = user_input_helper(['5'], FILENAME_TO_TEST)

    love_me     = 0
    love_me_not = 0
    
    output_list.each do |word|
      if word.match(/they love me/i) && !(word.match(/they love me not/i))
        love_me += 1
      elsif word.match(/they love me not/i)
        love_me_not += 1
      end
    end

    expect(love_me).must_equal 3
    expect(love_me_not).must_equal 2
  end

  it "4 will result in 2 love mes and 2 love me nots" do
    output_list = user_input_helper(['4'], FILENAME_TO_TEST)

    love_me     = 0
    love_me_not = 0
    
    output_list.each do |word|
      if word.match(/they love me/i) && !(word.match(/they love me not/i))
        love_me += 1
      elsif word.match(/they love me not/i)
        love_me_not += 1
      end
    end

    expect(love_me).must_equal 2
    expect(love_me_not).must_equal 2
  end

  it "7 will result in 4 love mes and 3 love me nots" do
    output_list = user_input_helper(['7'], FILENAME_TO_TEST)

    love_me     = 0
    love_me_not = 0
    
    output_list.each do |word|
      if word.match(/they love me/i) && !(word.match(/they love me not/i))
        love_me += 1
      elsif word.match(/they love me not/)
        love_me_not += 1
      end
    end

    expect(love_me).must_equal 4
    expect(love_me_not).must_equal 3
  end
end
