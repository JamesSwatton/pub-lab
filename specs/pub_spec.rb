require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')


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

  def test_recieve_cash_from_customer
    customer1 = Customer.new("Bob", 65, 50)
    customer1.buy_drink(@guiness)
    @pub.recieve_cash_from_customer(customer1, @guiness)
    assert_equal(3, @pub.cash_in_till)
  end

  def test_is_customer_over_18
    customer1 = Customer.new("Bob", 65, 50)
    assert_equal(true, @pub.is_customer_over_18?(customer1))
  end

  def test_can_serve
    customer1 = Customer.new("Bob", 65, 50)
    @pub.serve(customer1, @guiness)
    assert_equal(3, @pub.cash_in_till)
    assert_equal([@vodka, @wine], @pub.drinks)
  end


end
