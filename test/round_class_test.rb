require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/round_class.rb'

class RoundTest < Minitest::Test
  #
  # def setup
  #   card_1 = Card.new("What is the capital of Alaska?", "Juneau")
  #   card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
  #   deck = Deck.new([card_1, card_2])
  #   round = Round.new(deck)
  # end

  def test_round_class_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  def test_deck_method_returns_deck
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal round.deck, deck
  end

  def test_guesses_method_stores_user_guesses
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal round.guesses, []
  end

  def test_current_card_returns_card_currently_on
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end

  def test_recording_a_guess_and_checking_number_of_guesses
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    deck = Deck.new([card_1])
    round = Round.new(deck)
    round.record_guess("Juneau")
    assert_instance_of Guess, round.guesses[0]
    assert_equal 1, round.guesses.length
  end

  def test_number_correct
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    deck = Deck.new([card_1])
    round = Round.new(deck)
    round.record_guess("Juneau")
    assert_equal round.number_correct, 1
  end

  def test_percent_correct
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("Juneau")
    round.record_guess("2")
    assert_equal round.percent_correct, 50
  end
end
