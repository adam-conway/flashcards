require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck_class.rb'

class DeckTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    @card_2 = Card.new("Where does Adam live?", "Denver")
    @deck = Deck.new([@card_1, @card_2])
  end

  def test_deck_class_and_card_class_initialize
    assert_instance_of Card, @card_1
    assert_instance_of Card, @card_2
    assert_instance_of Deck, @deck
  end

  def test_that_deck_holds_cards
    assert_equal @deck.cards, [@card_1, @card_2]
  end

  def test_count_returns_length_of_deck
    assert_equal @deck.count, 2
  end

end
