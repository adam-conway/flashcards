require 'pry'
require './lib/deck_class.rb'
require './lib/card_class.rb'

class Round
  attr_accessor :deck
                :guesses

  def initialize(deck)
    @deck = deck
    guesses = []
  end

end

binding.pry
