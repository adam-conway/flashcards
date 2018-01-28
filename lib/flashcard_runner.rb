require 'pry'
require './lib/card_class.rb'
require './lib/deck_class.rb'
require './lib/guess_class.rb'
require './lib/round_class.rb'
require './lib/card_generator_class.rb'

# filename = "./lib/cards.txt"
puts "Please let me know where your questions are:"
filename = gets.chomp

until File.exists?(filename)
  puts "Sorry, that file does not exist. Please specify a new file:"
  filename = gets.chomp
end


list_of_cards = CardGenerator.new(filename).cards
deck = Deck.new(list_of_cards)
round = Round.new(deck)
round.start
