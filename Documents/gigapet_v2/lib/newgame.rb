require_relative 'dragon'

class StartGame
    attr_reader :dragon

def initialize
    @dragon = Dragon.new
end

def game
    loop do 
    welcome
    user_input
    hunger_increase
    energy_decrease
    affection_decrease
    fun_decrease
    break if @user_input == "Quit"
    end
end

def welcome
    print "\n"
    print "Here is the current state of your Dragon:\n" 
    print "Hunger: #{@dragon.hunger} \n"
    print "Energy: #{@dragon.energy} \n"
    print "Fun: #{@dragon.fun} \n"
    print "Affection: #{@dragon.affection} \n"
    print "Mood Report: #{@dragon.mood}\n"
    print "\n"
    sleep(2) 

end

def user_input
    print "How would you like to interact with your dragon?\n"
    print "Feed, Sleep, Play, Pet, or Quit\n"
    print "Input:\n"
    @user_input = gets.capitalize.chomp

    if @user_input == "Feed"
        if @dragon.hunger > 1
            @dragon.hunger -= 1
            puts "Mmmmmmm, thanks for the people parts!"
           else
            puts "I'm full already!" # hunger does not change
           end
    end

    if @user_input == "Sleep"
        if @dragon.energy < 10
            @dragon.energy += 2
            puts "Zzz...."
           else
            puts "I'm not tired!" # hunger does not change
        end
    end

    if @user_input == "Pet"
        if @dragon.affection  < 10
            @dragon.affection += 1
            puts "Oh yea, that's the spot."
           else
            puts "I'm all loved the love up!" # hunger does not change
        end
    end

    if @user_input == "Play"
        if @dragon.fun  < 10
            @dragon.fun += 1
            puts "Weee!"
           else
            puts "I need a break!" # hunger does not change
        end
    end

    if @user_input == "Quit"
        exit
    end
end

def hunger_increase
    hunger_timer = Time.now + 2*60

    loop
      if Time.now > hunger_timer
        @dragon.hunger += 1
        hunger_timer = Time.now + 2*60
    end

end

def energy_decrease
    energy_timer = Time.now + 2*60

    loop
        if Time.now > energy_timer
        @dragon.affectopm -= 1
        energy_timer = Time.now + 2*60
    end
end

def affection_decrease
    affection_timer = Time.now + 2*60

    loop
      if Time.now > affection_timer
        @dragon.affection +=1
        affection_timer = Time.now + 2*60
    end
end

def fun_decrease
    fun_timer = Time.now + 2*60

    loop
      if Time.now > fun_timer
        @dragon.fun +=1
        fun_timer = Time.now + 2*60
    end
end

end



StartGame.new.game


