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
    @the_jia = River.new("The Jia Gerkin Estuary", [@tasher, @davie,@craw,@eddie, @chris, @dale])
    @bell_bear = Bear.new("Colin Bell")
  end

  def test_get_name()
    assert_equal("The Jia Gerkin Estuary", @the_jia.get_name())
  end

  # def test_get_fish()
  #   assert_equal([@tasher,@davie,@craw,@eddie,@chris,@dale], @the_jia.get_fish())    
  # end

  def test_fish_number()
  assert_equal(6, @the_jia.fish_number)   
  end


end