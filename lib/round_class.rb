require 'pry'
require './lib/deck_class.rb'
require './lib/card_class.rb'
require './lib/guess_class.rb'

class Round

  attr_accessor :deck,
                :user_guesses

  def initialize(deck)
    @deck = deck
    @user_guesses = []
  end

  def current_card
    deck.cards[@user_guesses.length]
  end

  def record_guess(guess)
    guess = Guess.new(guess, current_card)
    @user_guesses << guess
  end

  def number_correct
    @total_correct = 0
    @user_guesses.each do |i|
      if i.feedback == "Correct!"
        @total_correct += 1
      end
    end
    return @total_correct
  end

  def percent_correct
    right_answers = number_correct.to_f / @user_guesses.length.to_f
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
      puts "This is card #{@user_guesses.length + 1} out of #{deck.count}"
      puts "Question: #{deck.cards[@user_guesses.length].question}"
      guess = STDIN.gets.chomp
      record_guess(guess)
      puts @user_guesses.last.feedback
    end
  end

  def conclusion
    puts "****** Game over! ******"
    print "You had #{number_correct} correct guesses out of #{deck.count}"
    puts " for a score of #{percent_correct}%"
  end
  
end
