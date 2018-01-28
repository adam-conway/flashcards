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

  def start
    introduction
    card_iteration
    conclusion
  end

  def introduction
    puts "Welcome! You're playing with #{deck.count} cards."
    puts "--------------------------------------------------------"
  end

  def card_iteration
    deck.cards.each do |ask_question|
      puts "This is card #{guesses.length + 1} out of #{deck.count}"
      puts "Question: #{deck.cards[guesses.length].question}"
      guess = gets.chomp
      record_guess(guess)
      puts guesses.last.feedback
    end
  end

  def conclusion
    puts "****** Game over! ******"
    puts "You had #{number_correct} correct guesses out of #{deck.count} for a score of #{percent_correct}%"
  end
end
