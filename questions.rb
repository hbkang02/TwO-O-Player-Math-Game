class Qustions
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def ask_question(name)
    puts "#{name}: What does #{@num1} plus #{@num2} equal?"
    guess = gets.chomp

  end

  def check_ans?(input)
    @sum == input
  end

end
