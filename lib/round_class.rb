require 'pry'
require './lib/deck_class.rb'
require './lib/card_class.rb'
require './lib/guess_class.rb'

class Round
  attr_accessor :deck

  def initialize(deck)
    @deck = deck
    @user_guesses = []
    @total_correct = 0
  end

  def guesses
    @user_guesses
  end

  def current_card
    deck.cards[guesses.length]
  end

  def record_guess(guess)
    guess = Guess.new(guess, current_card)
    guesses << guess
  end

  def number_correct
    @total_correct = 0
    guesses.each do |i|
      if i.feedback == "Correct!"
        @total_correct += 1
      end
    end
    return @total_correct
  end

  def percent_correct
    right_answers = number_correct.to_f / guesses.length.to_f
    right_answers = right_answers * 100
    return right_answers.to_i
  end
end

# binding.pry
