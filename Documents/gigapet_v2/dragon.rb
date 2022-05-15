class Dragon
     attr_reader :mood, :hunger, :energy, :fun, :affection
    def initialize() 
      @hunger = rand(1..10)
      @energy = rand(1..10)
      @fun = rand(1..10)
      @affection = rand(1..10)
    end
    

    def mood

      if @hunger > 5
        "Bad Mood"
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
 



