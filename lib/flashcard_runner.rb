require 'pry'
require './lib/deck_class.rb'
require './lib/round_class.rb'
require './lib/card_generator_class.rb'

filename = ARGV[0]

while filename == nil
  puts "Please let me know where your file is:"
  filename = STDIN.gets.chomp
end

until File.exists?(filename)
  puts "Sorry, that file does not exist. Please specify a new file:"
  filename = STDIN.gets.chomp
end

list_of_cards = CardGenerator.new(filename).cards
deck = Deck.new(list_of_cards)
round = Round.new(deck)
round.start
