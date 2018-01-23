require card_clas_test.

#class Card
  def initialize(question,answer)
    @question = question
    @answer = answer
  end

  def questions
    puts @question
  end

  def answer
    puts @answer
  end
end

card = Card.new("What is the capital of Alaska?", "Juneau")
card.question
card.answer
