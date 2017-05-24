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
    assert_equal("Natasha", @tasher.get_name())
  end

end