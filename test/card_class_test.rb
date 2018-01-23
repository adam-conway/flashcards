require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class CardTest < Minitest::Test
  def card_class_exists
    card = Card.new
    assert_instance_of Card, card
  end
end
