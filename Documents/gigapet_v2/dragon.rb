
require_relative 'hunger'
require_relative 'energy'
require_relative 'fun'
require_relative 'affection'
require_relative 'mood'

class Dragon
  attr_reader :hunger, :energy, :fun, :affection, :mood
     
    
    def hunger
      rand(1..10)
    end



    def energy
       rand(1..10)
    end



    def fun
       rand(1..10)
    end 



    def affection
       rand(1..10)
    end


    def mood
      if hunger > 5
        "Bad Mood"
      elsif energy < 5
        "Bad Mood"
      elsif fun < 5 or affection < 5
        "I'm ok"
      else
        "Good Mood"
      end
    end

    end



tim = Dragon.new
puts tim.mood
puts tim.hunger
puts tim.energy
puts tim.fun
puts tim.affection
 



