require 'pry'
require './lib/card_class.rb'

class Deck
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    cards.length
  end
end
