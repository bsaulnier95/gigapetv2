module EnergyModify

def sleep
    if @user_input == "Sleep"
    @energy += 5 
    end

    if @energy > 10
     @energy == 10
    end
end
 
def energy_decrease

    energy_timer = Time.now + 2.minutes

    loop
        if Time.now > energy_timer
        @energy -=1
    
        energy_timer = Time.now + 2.minutes
    end
end
end

       

