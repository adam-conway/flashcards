require 'pry'
require './lib/card_class.rb'
require './lib/deck_class.rb'
require './lib/guess_class.rb'
require './lib/round_class.rb'

card_1 = Card.new("What is 5 + 5?", 10)
card_2 = Card.new("What is Rachel's favorite animal?", "red panda")
card_3 = Card.new("What is Mike's middle name?", "nobody knows")
card_4 = Card.new("What cardboard cutout lives at Turing?", "Justin bieber")
deck = Deck.new([card_1, card_2, card_3, card_4])
round = Round.new(deck)

puts "Welcome! You're playing with #{round.deck.count} cards."
puts "--------------------------------------------------------"

deck.cards.each do |ask_question|
  puts "This is card #{round.guesses.length + 1} out of #{round.deck.count}"
  puts "Question: #{deck.cards[round.guesses.length].question}"
  guess = gets.chomp
  round.record_guess(guess)
  puts round.guesses.last.feedback
end

puts "****** Game over! ******"
puts "You had #{round.number_correct} correct guesses out of #{round.deck.count} for a score of #{round.percent_correct}%"
