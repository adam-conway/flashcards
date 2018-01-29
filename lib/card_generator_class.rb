require 'pry'
require './lib/deck_class.rb'
require './lib/card_class.rb'

class CardGenerator

  attr_accessor :cards

  def initialize(file)
    @cards = []
    File.open(file).each do |line|
      line = line.strip
      card = Card.new(line.split(",")[0],line.split(",")[1])
      @cards << card
    end
  end
  
end
