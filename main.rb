require "./player.rb"
require "./questions.rb"


class Game

  def initialize
    @current_player = "Player 1"

    @player1 = Player.new
    @player2 = Player.new

    @player_1_lives = "#{@player1.lives}/3"
    @player_2_lives = "#{@player2.lives}/3"

    @end = false

    until @end
      turn
    end

  end

  def turn

    puts "----- NEW TURN -----"
    ask_question = Questions.new(@current_player)

   
    if !ask_question.correct
      wrong?
    end


  
    if @current_player == "Player 1"
      @current_player = "Player 2"

    else @current_player == "Player 2"
     @current_player = "Player 1"

    end

    puts "P1: #{@player_1_lives} vs P2: #{@player_2_lives}"

  end

  def wrong?

    if @current_player == "Player 1"
      @player1.wrong?
      @player_1_lives = "#{@player1.lives}/3"

      if @player1.lives == 0
        @end = true
        puts "----- GAME OVER -----"
      end

    else
      @player2.wrong?
      @player_2_lives = "#{@player2.lives}/3"

      if @player2.lives == 0
        @end = true
        puts "----- GAME OVER -----"
      end

    end
  end
end

start = Game.new