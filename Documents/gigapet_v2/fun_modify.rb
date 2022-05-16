module FunModify
  
def play
    if @user_input == "Play"
    @fun += 2
    end

    if @fun > 10
     @fun == 10
    end
end
 
def fun_decrease

    fun_timer = Time.now + 2.minutes

    loop
      if Time.now > fun_timer
        @fun +=1
    
        fun_timer = Time.now + 2.minutes
    end
end
end
 


    
       

