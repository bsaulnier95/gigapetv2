class Energy
=begin 
    MAX_ENERGY = 10
    MIN_ENERGY = 1
    ENERGY_WARNING = 4

def energy_level
    @energy_level = rand(MIN_ENERGY..MAX_ENERGY)
end

def report_energy
    energy = @energy_level
    return energy
end


def status
    case @energy_level
    when (2..4)
        "I'm pretty tired. I could use some sleep"
    when (5..9)
        "I ready to go!"
    when MAX_ENERGY
        "I'M JAZZED!"
    when MIN_ENERGY
        "Zzz...(Looks like your Dragon is asleep"
    end
end

=end

def sleep
    if @user_action == "Sleep"
    @energy_level += 5 
    end

    if @energy_level > MAX_ENERGY
     @energy_level == 10
    end
end
 
def energy_decrease

    energy_timer = Time.now + 2.minutes

    loop
        if Time.now > energy_timer
        @energy_level -=1
    
        energy_timer = Time.now + 2.minutes
    end
end
end

       

