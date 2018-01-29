require 'pry'
require './lib/card_class.rb'

class Guess
  
  attr_accessor :response,
                :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    if response == card.answer
      true
    else
      false
    end
  end

  def feedback
    if correct?
      return "Correct!"
    else
      return "Incorrect."
    end
  end

end
