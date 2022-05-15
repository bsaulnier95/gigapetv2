class Fun
    attr_accessor :fun_level
    MAX_FUN = 10
    MIN_FUN = 1
    FUN_WARNING = 4

def fun_level
    @fun_level = rand(MIN_FUN..MAX_FUN)
end

def report_fun
    fun = @fun_level
    return fun
end


def status
    case @fun_level
    when (2..4)
        "I'm bored"
    when (5..9)
        "I'm having fun!"
    when MAX_FUN
        "I'm having the best time!"
    when MIN_FUN
        "I've had more fun at Dragon funerals"
    end
end


def play
    if @user_action == "Play"
    @fun_level += 2
    end

    if @fun_level > MAX_FUN
     @fun_level == 10
    end
end
 
def fun_decrease

    fun_timer = Time.now + 2.minutes

    loop
      if Time.now > fun_timer
        @fun_level +=1
    
        fun_timer = Time.now + 2.minutes
    end
end
end
 


    
       

