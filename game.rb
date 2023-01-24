class Game
  def initialize(name)
    @name = name
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  def begin
    puts "New game started. Ask math addition questions!"
    turn
  end

  def check_life
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
  end

  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts '---------GAME-OVER--------'
    puts 'Good bye!'
    exit(0)
  end

  def check_score
    if @player_1.no_life
      winner(@player_2)
    elsif @player_2.no_life
      winner(@player_1)
    end
  end

  def turn
    @player_1.new_question
    check_score
    @player_2.new_question
    check_score
    check_life
    puts "---------NEW-TURN---------"
    turn
  end
end



  #