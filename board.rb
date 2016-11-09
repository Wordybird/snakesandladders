class Board

  attr_reader :end_square, :snakes_ladders
  attr_accessor :person1, :person2

  def initialize(end_square,person1,person2)
    @end_square=end_square
    @person1 = person1
    @person2 = person2
    # @snakes_ladders = snakes_ladders
  end

  def roll_dice()
    dice=1+rand(6)
    @person1.position+=dice
  end

# def lands_on_snake
#   for snake in @snakes
#     snake=@person1.position
#     if snake == @snakes.key[50]
#       snake==@snakes.values
#     end
#   end
#  end

def win_check()
  if @person1.position==end_square
  message = "Congratulations #{@person1}, you win."
elsif @person2.position==end_square
  message= "Congratulations #{@person2}, you win."
  return message
  end
end

end
