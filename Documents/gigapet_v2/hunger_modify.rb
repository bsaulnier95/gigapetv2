module HungerModify

def feed
   if @user_input == "Feed"
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
        @hunger += 1
    
        hunger_timer = Time.now + 2.minutes
    end
end

end
    

