class Dragon
     attr_reader :mood, :hunger, :energy, :fun, :affection
    def initialize() 
      @hunger = rand(1..10)
      @energy = rand(1..10)
      @fun = rand(1..10)
      @affection = rand(1..10)
     
    end
    

    def mood

      if @hunger > 5 || @energy < 5
        "Bad Mood"
        exit
      elsif @fun < 5 && @affection < 5
        "I'm ok"
      else
        "Good Mood"
      end
    end

  end


  



tim = Dragon.new
puts tim.mood.to_s
puts tim.hunger
puts tim.energy
puts tim.fun
puts tim.affection
 



