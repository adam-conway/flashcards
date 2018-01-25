require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_class.rb'

class CardTest < Minitest::Test
  def test_card_class_exists
    card = Card.new("Testing", "Stuff")
    assert_instance_of Card, card
    assert_equal :question, "Testing"
  end
end
