require('minitest/autorun')
require('minitest/rg')

require_relative('../river')
require_relative('../fish')
require_relative('../bear')



class TestBearParty < MiniTest::Test

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

  def test_get_name()
    assert_equal("Colin Bell", @bell_bear.get_name())
  end

  def test_hungry?
    assert_equal(true,@bell_bear.hungry?)
  end



  def test_grab_fish_river_loses_fish()
    number_of_fish = @the_jia.fish_number()
    @bell_bear.grab_fish(@the_jia)
    assert_equal(number_of_fish - 1, @the_jia.fish_number)
    assert_equal(1, @bell_bear.hunger_level())
  end

  def test_set_stomach()
    @bell_bear.set_stomach(5)
    assert_equal(5, @bell_bear.hunger_level())

  end

  def test_grab_fish_overeat()
    @bell_bear.set_stomach(5)
    assert_equal("dead", @bell_bear.grab_fish(@the_jia))
  end

  def test_roar()
    assert_equal("duh-doy", @bell_bear.roar())
    
  end

  def test_river_empty_response
    @the_jia.set_fish(0)
    assert_equal("river is empty; need manure", @the_jia.fish_remove())
  end

  # def test_river_manure()
  #   current_fish = @the_jia.fish_number()
  #   @bell_bear.river_manure(@the_jia)
  #   assert_equal(current_fish+1, @the_jia.fish_number())
  # end

  def test_scratch_against_tree()
    @bell_bear.set_stomach(3)
    @bell_bear.scratch_against_tree()
    assert_equal(2, @bell_bear.hunger_level())    
  end

end