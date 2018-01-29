require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator_class.rb'

class CardGeneratorTest < Minitest::Test

  def test_generates_cards_array
    filename = "./lib/cards.txt"
    list_of_cards = CardGenerator.new(filename).cards
    assert_instance_of Card, list_of_cards[0]
    assert_equal list_of_cards.length, 4
  end
  
end
