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

  it "5 will result in 4 ducks and a goose" do
    output_list = user_input_helper(['5'], FILENAME_TO_TEST)

    duck_matches = 0
    goose_matches = 0
    
    output_list.each do |word|
      if (word.match(/Which player do you want to be the Goose?/i))

      elsif word.match(/Duck/)
        duck_matches += 1
      elsif word.match(/Goose/)
        goose_matches += 1
      end
    end

    expect(duck_matches).must_equal 4
    expect(goose_matches).must_equal 1
  end

  it "'1' will result in 0 ducks and a goose" do
    output_list = user_input_helper(['1'], FILENAME_TO_TEST)

    duck_matches = 0
    goose_matches = 0

    output_list.each do |word|
      if (word.match(/Which player do you want to be the Goose?/i))

      elsif word.match(/Duck/)
        duck_matches += 1
      elsif word.match(/Goose/)
        goose_matches += 1
      end
    end

    expect(duck_matches).must_equal 0
    expect(goose_matches).must_equal 1
  end

  it "10 will result in 9 ducks and a goose" do
    output_list = user_input_helper(['10'], FILENAME_TO_TEST)

    duck_matches = 0
    goose_matches = 0
    output_list.each do |word|
      if (word.match(/Which player do you want to be the Goose?/i))
    
      elsif word.match(/Duck/i)
        duck_matches += 1
      elsif word.match(/Goose/i)
        goose_matches += 1
      end
    end


    expect(duck_matches).must_equal 9
    expect(goose_matches).must_equal 1
  end
end
