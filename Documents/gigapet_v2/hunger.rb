class Hunger
=begin
    MAX_HUNGER = 10
    MIN_HUNGER = 1
    HUNGER_WARNING = 4

def hunger_level
    @hunger_level = rand(MIN_HUNGER..MAX_HUNGER)
end

def hunger
     hunger = @hunger_level
     return hunger
end

def status
    case @hunger_level
    when (2..4)
        print "I'm not hungry right now!"
    when (5..9)
        print "I need to eat soon!"
    when MAX_HUNGER
        print "I'm going to starve!"
    when MIN_HUNGER
       print "I'm stuffed"
    end
end
=end
def feed
   if @user_action == "Feed"
    dragon.hunger -= 1  
   end

   if dragon.hunger < 1
    dragon.hunger == 1
   end

end


def hunger_increase
    hunger_timer = Time.now + 2.minutes

    loop
      if Time.now > hunger_timer
        @hunger_level +=1
    
        hunger_timer = Time.now + 2.minutes
    end
end

end
    

