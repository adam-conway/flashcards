require 'pry'
require './lib/card_class.rb'

class Guess
  attr_accessor :users_guess

  def initialize(users_guess, current_card)
    @users_guess = users_guess
    @current_card = current_card
  end

  def current_card
    @current_card
  end
end

# binding.pry
