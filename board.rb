class Board

  attr_reader :end_square, :snakes_ladders
  attr_accessor :person1, :person2

  def initialize(end_square,person1,person2, snakes_ladders)
    @end_square=end_square
    @person1 = person1
    @person2 = person2
    @snakes_ladders = snakes_ladders
  end

  def roll_dice()
    until @person1.position=end_square or @person1.position>end_square or @person2.position=end_square or @person2.position>end_square
      dice=1+rand(6)
      @person1.position+=dice
      puts "#{@person1.name}, you have rolled #{dice} and are now on position #{@person1.position}."
      @person2.position+=dice
      puts "#{@person2.name}, you have rolled #{dice} and are now on position #{@person2.position}."
    end
  end

  def lands_on_snake_or_ladder()
    for key,values in @snakes_ladders
      if @person1.position== key
        @person1.position+= values
      elsif @person2.position == key
        @person2.position+=values
      end
    end
  end

  def win_check()
    if @person1.position==end_square
      message = "Congratulations #{@person1.name}, you win."
      return message
    elsif @person2.position==end_square
      message= "Congratulations #{@person2.name}, you win."
      return message
    elsif @person1.position>end_square
      message = "Congratulations #{@person1.name}, you win."
      return message
    elsif @person2.position>end_square
      message= "Congratulations #{@person2.name}, you win."
      return message
    end
  end


end
