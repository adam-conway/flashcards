require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess_class.rb'

class GuessTest < Minitest::Test

  def setup
    @card = Card.new("What is the capital of Alaska?", "Juneau")
    @guess_1 = Guess.new("Juneau", @card)
    @guess_2 = Guess.new("Denver", @card)
  end

  def test_card_class_exists
    assert_instance_of Guess, @guess_1
  end

  def test_initialize_arguments_work
    assert_equal "Juneau", @guess_1.response
    assert_equal @card, @guess_1.card
  end

  def test_correct_method
    assert @guess_1.correct?
    refute @guess_2.correct?
  end

  def test_feedback_method
    assert_equal @guess_1.feedback, "Correct!"
    assert_equal @guess_2.feedback, "Incorrect."
  end
  
end
