module AffectionModify

def pet
    if @user_input == "Pet"
    @affection += 1
    end

    if @affection > 10
     @affection == 10
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
