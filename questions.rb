class Questions

  attr_accessor :correct

  def initialize(current_player)
    @number1 = rand(20)
    @number2 = rand(20)
    @answer = @number1 + @number2

    puts "#{current_player}: What does #{@number1} plus #{@number2} equal?"
    ask_question


  end

  def ask_question

    @player_answer = gets.chomp

    if @player_answer == @answer.to_s
      puts "Correct answer!!"
      @correct = true

    else
      puts "Wrong asnwer T_T"
      @correct = false

    end

  end

end
