require_relative 'dragon'
#require_relative 'hunger_modify'

class StartGame
    #include HungerModify
    attr_reader :welcome, :user_input, :stat_adjustments, :game

def initialize
    @dragon = Dragon.new
end

def game
    loop do 
    welcome
    puts user_input
    stat_adjustments
    break if @user_input == "Quit"
    end
end


def welcome
    print "Howdy!\n"
    sleep(2)
    print "Here is the current state of your Dragon:\n" 
    print "Hunger: #{@dragon.hunger} \n"
    print "Energy: #{@dragon.energy} \n"
    print "Fun: #{@dragon.fun} \n"
    print "Affection: #{@dragon.affection} \n"
    print "Mood Report: #{@dragon.mood}\n"
    sleep(2)

end

def user_input
    print "How would you like to interact with your dragon?\n"
    sleep(2)
    print "Feed, Sleep, Play, Pet, or Quit\n"
    sleep(2)
    print "Input:\n"
    @user_input = gets.capitalize.chomp!
    if @user_input == "Quit"
        "Thank you for playing! See you next time!"
        exit
    end
end

def stat_adjustments
    print "New Dragon Stats: \n"
    print "Hunger: #{@dragon.hunger} \n"
    print "Energy: #{@dragon.energy} \n"
    print "Fun: #{@dragon.fun} \n"
    print "Affection: #{@dragon.affection} \n"
    print "Mood Report: #{@dragon.mood} \n"

end
=begin
def hunger_modify
    HungerModify.feed
    HungerModify.hunger_increase
end
=end
end






puts StartGame.new.game