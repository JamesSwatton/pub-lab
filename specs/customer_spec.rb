require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative("../drink")


class TestCustomer < MiniTest::Test

  def test_get_customer_name
    customer1 = Customer.new("Bob", 50)
    assert_equal("Bob", customer1.name)
  end


  def test_deduct_drink_cost_from_wallet
    customer1 = Customer.new("Bob", 50)
    guiness = Drink.new("guiness", 2)
    customer1.deduct_cash_from_wallet(guiness.price)
    assert_equal(48, customer1.cash_in_wallet)
  end

  def test_cusomer_has_enough_funds_to_buy_drink
    customer1 = Customer.new("Bob", 50)
    assert_equal(true, customer1.has_enough_funds_to_buy_drink?(10))
  end



end
