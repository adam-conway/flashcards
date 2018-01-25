require 'pry'

class Card
  attr_reader :question

  def initialize(question,answer)
    @question = question
  end

end
