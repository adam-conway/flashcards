require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess_class.rb'

class GuessTest < Minitest::Test

  def test_guess_and_card_class_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_instance_of Card, card
    assert_instance_of Guess, guess
  end

  def test_guess_arguments_work
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal "Juneau", guess.response
    assert_equal card, guess.card
  end

  def test_returns_true_if_answer_correct
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert guess.correct?
  end

  def test_returns_false_if_answer_wrong
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Alaska", card)
    refute guess.correct?
  end

  def test_provides_positive_feedback_for_user
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal guess.feedback, "Correct!"
  end

  def test_provides_negative_feedback_for_user
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Alaska", card)
    assert_equal guess.feedback, "Incorrect."
  end
end
