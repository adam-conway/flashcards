require 'pry'
require './lib/card_class.rb'

class Guess
  attr_accessor :response
                :this_answer

  def initialize(response, current_card)
    @response = response
    @current_card = current_card
    @this_answer = nil
  end

  def current_card
    @current_card
  end

  def correct?
    if response == current_card.answer
      true
    else
      false
    end
  end

end

# binding.pry
