require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class TestDrink < MiniTest::Test

  def test_get_drink_name
    drink1 = Drink.new("guiness", 3)
    assert_equal("guiness", drink1.name)
  end

  def test_get_drink_price
    drink1 = Drink.new("guiness", 3)
    assert_equal(3, drink1.price)
  end

end
