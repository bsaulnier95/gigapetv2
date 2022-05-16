require_relative 'hunger_modify'
require_relative 'energy_modify'
require_relative 'fun_modify'
require_relative 'affection_modify'

class Dragon
    include HungerModify
    include EnergyModify
    include FunModify
    include AffectionModify

     attr_reader :mood, :hunger, :energy, :fun, :affection
    def initialize() 
      @hunger = rand(1..10)
      @energy = rand(1..10)
      @fun = rand(1..10)
      @affection = rand(1..10)
     
    end

    def mood
      if @hunger > 5 || @energy < 5
        "Bad Mood"
        exit
      elsif @fun < 5 && @affection < 5
        "I'm ok"
      else
        "Good Mood"
      end
    end

  end