require_relative('river')
require_relative('fish')
require_relative('bear')


def setup()

  @tasher = Fish.new("Natasha")
  @davie = Fish.new("Davie")
  @craw = Fish.new("Crawford")
  @eddie = Fish.new("Eddie")
  @chris = Fish.new("Chris")
  @dale = Fish.new("Dale")
  @the_jia = River.new("Jia Gerkin Estuary", [@tasher, @davie,@craw,@eddie, @chris, @dale])
  @bell_bear = Bear.new("Colin Bell")
end


def welcome()
  puts ""
  puts "*************************"
  puts " WELCOME TO FISH PARTY   "
  puts ""
  puts "with Colin Bell as 'bear'"
  puts "*************************"


  
end

def status()
  puts ""
  puts "* Your bear, #{@bell_bear.get_name}, has #{@bell_bear.hunger_level} fish in his tummy!"
  if @bell_bear.hungry?
    puts "* #{@bell_bear.get_name} wants some fish!"
    if @the_jia.fish_number > 0
      puts "* There's currently #{@the_jia.fish_number} fish in the bountiful #{@the_jia.get_name()}"
    else puts "* However, there's currently #{@the_jia.fish_number} in the #{@the_jia.get_name}! It needs manure! YOU know what to do!" 
    end 
  else
    puts "* #{@bell_bear.get_name} IS FULL UP! Whatever you do, don't feed him! better to scratch against a treet!"
  end
end

def player_choose()
  choice = 0
  while !(choice == 1 || choice == 2 || choice == 3)
    puts ""
    puts "Choose an option, bear lover: 
    1) get fish
    2) fertilise the river
    3) scratch up against a tree" 
    choice = gets.chomp.to_i()
  end
  player_move(choice)
end

def player_move(choice)
  puts ""
  case choice
  when 1 
    @bell_bear.grab_fish(@the_jia)
  when 2
    @bell_bear.river_manure(@the_jia)
  when 3
    @bell_bear.scratch_against_tree()
  end
end

def run_game()
  setup()
  welcome()
  while (@bell_bear.get_aliveness == "alive")
    status()
    player_choose()
  end
  puts "*************************"
  puts "       GAME OVER         "
  puts "*************************"
end

run_game()

