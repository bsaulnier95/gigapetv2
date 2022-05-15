class Affection
=begin
    MAX_AFFECTION = 10
    MIN_AFFECTION = 1
    AFFECTION_WARNING = 4

def affection_level
    @affection_level = rand(MIN_AFFECTION..MAX_AFFECTION)
end

def report_affection
    affection = @affection_level
    return affection
end


def status
    case @affection_level
    when (2..4)
        "I need affection"
    when (5..9)
        "I feel loved :)"
    when MAX_AFFECTION
        "I LOVE YOU!"
    when MIN_AFFECTION
        "IM STARVING! For attention..."
    end
end

=end

def pet
    if @user_action == "Pet"
    @affection_level += 1
    end

    if @affection_level > MAX_AFFECTION
     @affection_level == 10
    end
end
 
 def affection_decrease
    affection_timer = Time.now + 2.minutes

    loop
      if Time.now > affection_timer
        @affection_level +=1
    
        affection_timer = Time.now + 2.minutes
    end
 end
 
end
