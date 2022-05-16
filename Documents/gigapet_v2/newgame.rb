require_relative 'dragon'

class StartGame
    attr_reader :welcome, :user_input, :stat_adjustments, :game

def initialize
    @dragon = Dragon.new
end

def game
    loop do 
    return welcome
    return user_input
    return stat_adjustments
    break if @user_input == "Quit"
end


def welcome
    print "Hello!"
    print "Here is the current state of your Dragon:" 
    print "Hunger: #{dragon.hunger} "
    print "Energy: #{dragon.energy} "
    print "Fun: #{dragon.fun} "
    print "Affection: #{dragon.affection} "
    print "Mood Report: #{dragon.mood}"

end

def user_input
    print "How would you like to interact with your dragon?"
    print "Feed, Sleep, Play, Pet, or Quit"
    print "Input:  "
    @user_input = gets.capitalize.chomp
    if @user_input == "Quit"
        "Thank you for playing! See you next time!"
      exit!
    end
end

def stat_adjustments
    print "New Dragon Stats: "
    print "Hunger: #{dragon.hunger} "
    print "Energy: #{dragon.energy} "
    print "Fun: #{dragon.fun} "
    print "Affection: #{dragon.affection} "
    print "Mood Report: #{dragon.mood}"

end
end
end


puts StartGame.new.game