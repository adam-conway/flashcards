require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_class.rb'

class CardTest < Minitest::Test
  def test_card_class_initializes
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_instance_of Card, card
  end

  def test_card_variables_set
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal card.question, "What is the capital of Alaska?"
    assert_equal card.answer, "Juneau"
  end
end
