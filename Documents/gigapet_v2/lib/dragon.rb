class Dragon
     attr_accessor :mood, :hunger, :energy, :fun, :affection

    def initialize 
      @hunger = rand(1..10)
      @energy = rand(1..10)
      @fun = rand(1..10)
      @affection = rand(1..10)
     
    end

    def mood
      if @hunger > 5 || @energy < 5
        "Bad Mood"
      elsif @fun < 5 && @affection < 5
        "I'm ok"
      else
        "Good Mood"
      end
    end

  end