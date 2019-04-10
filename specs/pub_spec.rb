require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')



class TestPub < MiniTest::Test

  def setup()
    @guiness = Drink.new("guiness", 3)
    @vodka = Drink.new("vodka", 5)
    @wine = Drink.new("wine", 10)
    drinks = [@guiness, @vodka, @wine]
    @pub = Pub.new("The Black Swan", 0, drinks)
  end

  def test_get_pub_name
    assert_equal("The Black Swan", @pub.name)
  end

  def test_get_how_many_drinks
    assert_equal(3, @pub.drinks.size)
  end

  def test_can_give_drink
    @pub.give_drink(@guiness)
    assert_equal(2, @pub.drinks.count)
  end

end
