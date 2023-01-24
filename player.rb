class Player

def initialize(name)
  @name = name
  @life = 3
end

def lose_life
  @lives -= 1
end

def no_life
  @lives == 0
end

def new_question
  new_question=Question.new
  new_question.ask_question(name)
  print '>: '
  @guess = $stdin.gets.chomp
  if new_question.check_ans?(@guess.to_i)
    puts 'Yes! You are correct.'
  else
    puts 'Seriously? No!'
    lose_life
  end

end


