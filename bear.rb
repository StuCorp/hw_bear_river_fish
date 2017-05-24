class Bear

  def initialize(name)
    @name = name
    @stomach = []
    @aliveness = "alive"
  end

  def get_name()
    return @name
  end

  def set_stomach(number)
    number.times {@stomach << "fish"}
  end

  def get_aliveness()
    return @aliveness
  end


  def hunger_level
    return @stomach.length
  end

  def hungry?
    @stomach.length() < 3 ? true : false 
  end

  def grab_fish(river)
    if river.fish_number > 0
      if hungry?()
        @stomach << river.fish_remove()  
        fish_eaten = @stomach.last().get_name()
        puts "#{@name} grabs #{fish_eaten} the fish and gobbles it up and gets entrails all over his bear face!" 
      else
        puts "bear exploded: too much fishings"
        @aliveness = "dead"
      end
    else
      puts "The river is devoid of fish! #{@name} desperately eats a rock and dies of rock poisoning!"
      @aliveness = "dead"
    end
  end

  def roar()
    return "duh-doy"    
  end

  def river_manure(river)
    river.add_fish()
    puts "#{@name} relieves himself in the river; the fish population surges!"
  end

  def scratch_against_tree()
    if @stomach.length() > 0
      @stomach.pop
      puts "#{@name} scratches up against a tree and works up an appetite."
    else
      puts "#{@name} had #{@stomach.length()} fish in his stomach! He tried to scratch against a tree and died of exhaustion! Yeah. NICE ONE."
      @aliveness = "dead"
    end
  end



end