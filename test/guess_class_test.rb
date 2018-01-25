require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess_class.rb'

class GuessTest < Minitest::Test
  def test_guess_and_card_class_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_instance_of Card, card
    guess = Guess.new("Juneau", card)
    assert_instance_of Guess, guess
  end

  def test_guess_arguments_work
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal "Juneau", guess.users_guess
    assert_equal card, guess.current_card
  end
end

# assert_equal "Juneau", users_guess
