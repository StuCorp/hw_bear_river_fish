class River

  def initialize(name, fish)
    @name = name
    @fish =  fish.shuffle!
  end

  def get_name()
    return @name
  end

  def get_fish()
    return @fish
  end

  def fish_number()
    return @fish.length()
  end

  def set_fish(number_of_fish)
    @fish = []
    number_of_fish.times {@fish << "fish"}
    
  end

  def fish_remove()
    if @fish.length() < 1
      return "river is empty; need manure"
    else
      @fish.pop()   
    end
  end

  def add_fish()
    rand(1..3).times {@fish << Fish.new("Poo Fish")}
  end

end