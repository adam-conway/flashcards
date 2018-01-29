require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/round_class.rb'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    @card_2 = Card.new("Where does Adam live", "Denver")
    @deck = Deck.new([@card_1, @card_2])
    @round = Round.new(@deck)
  end

  def test_round_class_exists_and_initializes
    assert_instance_of Round, @round
    assert_equal @deck, @round.deck
    assert_nil @user_guesses
  end

  def test_current_card_returns_card_currently_on
    assert_equal @card_1, @round.current_card
  end

  def test_recording_a_guess_and_checking_number_of_guesses
    @round.record_guess("Juneau")
    assert_equal 1, @round.user_guesses.length
  end

  def test_number_correct
    @round.record_guess("Juneau")
    assert_equal @round.number_correct, 1
  end

  def test_percent_correct
    @round.record_guess("Juneau")
    @round.record_guess("CA")
    assert_equal @round.percent_correct, 50
  end

end
