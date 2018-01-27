require 'pry'

class Card
  attr_reader :question,
              :answer

  def initialize(question,answer)

    @question = question.to_s
    @answer = answer.to_s

  end

end
