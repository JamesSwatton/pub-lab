require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')



class TestPub < MiniTest::Test

  def setup()
    @drink1 = Drink.new("guiness", 3)
    @drink2 = Drink.new("vodka", 5)
    @drink3 = Drink.new("wine", 10)
    drinks = [@drink1, @drink2, @drink3]
    @pub = Pub.new("The Black Swan", 0, drinks)
  end

  def test_get_pub_name
    assert_equal("The Black Swan", @pub.name)
  end

  def test_get_how_many_drinks
    assert_equal(3, @pub.drinks.size)
  end

end
